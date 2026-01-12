// SPDX-License-Identifier: AGPL-3.0-or-later
// API client for FormBase server

let baseUrl = "http://localhost:8080/api"

type apiError = {
  code: string,
  message: string,
}

type apiResult<'a> = result<'a, apiError>

// Generic fetch wrapper
let fetchJson = async (
  ~method: string,
  ~path: string,
  ~body: option<Js.Json.t>=?,
  (),
): result<Js.Json.t, apiError> => {
  let headers = Js.Dict.fromArray([
    ("Content-Type", "application/json"),
    ("Accept", "application/json"),
  ])

  let init = {
    "method": method,
    "headers": headers,
    "body": body->Option.map(Js.Json.stringify)->Js.Nullable.fromOption,
  }

  try {
    let response = await Fetch.fetch(baseUrl ++ path, Obj.magic(init))
    let json = await Fetch.Response.json(response)

    if Fetch.Response.ok(response) {
      Ok(json)
    } else {
      Error({
        code: "API_ERROR",
        message: "Request failed",
      })
    }
  } catch {
  | _ =>
    Error({
      code: "NETWORK_ERROR",
      message: "Failed to connect to server",
    })
  }
}

// Base CRUD
let getBases = async () => {
  await fetchJson(~method="GET", ~path="/bases", ())
}

let getBase = async (id: string) => {
  await fetchJson(~method="GET", ~path="/bases/" ++ id, ())
}

let createBase = async (name: string, description: option<string>) => {
  let body = Js.Dict.fromArray([
    ("name", Js.Json.string(name)),
    ("description", description->Option.mapOr(Js.Json.null, Js.Json.string)),
  ])
  await fetchJson(~method="POST", ~path="/bases", ~body=Js.Json.object_(body), ())
}

// Table CRUD
let getTables = async (baseId: string) => {
  await fetchJson(~method="GET", ~path="/bases/" ++ baseId ++ "/tables", ())
}

let createTable = async (baseId: string, name: string) => {
  let body = Js.Dict.fromArray([("name", Js.Json.string(name))])
  await fetchJson(
    ~method="POST",
    ~path="/bases/" ++ baseId ++ "/tables",
    ~body=Js.Json.object_(body),
    (),
  )
}

// Row CRUD
let getRows = async (baseId: string, tableId: string, ~filter: option<string>=?, ()) => {
  let path = "/bases/" ++ baseId ++ "/tables/" ++ tableId ++ "/rows"
  let queryPath = switch filter {
  | Some(f) => path ++ "?filter=" ++ Js.Global.encodeURIComponent(f)
  | None => path
  }
  await fetchJson(~method="GET", ~path=queryPath, ())
}

let createRow = async (baseId: string, tableId: string, cells: Js.Dict.t<Js.Json.t>) => {
  await fetchJson(
    ~method="POST",
    ~path="/bases/" ++ baseId ++ "/tables/" ++ tableId ++ "/rows",
    ~body=Js.Json.object_(cells),
    (),
  )
}

let updateCell = async (
  baseId: string,
  tableId: string,
  rowId: string,
  fieldId: string,
  value: Js.Json.t,
  ~rationale: option<string>=?,
  (),
) => {
  let body = Js.Dict.fromArray([
    ("value", value),
    ("rationale", rationale->Option.mapOr(Js.Json.null, Js.Json.string)),
  ])
  await fetchJson(
    ~method="PATCH",
    ~path="/bases/" ++ baseId ++ "/tables/" ++ tableId ++ "/rows/" ++ rowId ++ "/cells/" ++ fieldId,
    ~body=Js.Json.object_(body),
    (),
  )
}

let deleteRow = async (baseId: string, tableId: string, rowId: string) => {
  await fetchJson(
    ~method="DELETE",
    ~path="/bases/" ++ baseId ++ "/tables/" ++ tableId ++ "/rows/" ++ rowId,
    (),
  )
}

// Provenance
let getCellProvenance = async (
  baseId: string,
  tableId: string,
  rowId: string,
  fieldId: string,
) => {
  await fetchJson(
    ~method="GET",
    ~path="/bases/" ++
    baseId ++
    "/tables/" ++
    tableId ++
    "/rows/" ++
    rowId ++
    "/cells/" ++
    fieldId ++
    "/provenance",
    (),
  )
}
