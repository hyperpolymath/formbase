// SPDX-License-Identifier: AGPL-3.0-or-later
// HTTP router for FormBase API

import gleam/http.{Get, Post, Patch, Delete}
import gleam/string_builder
import wisp.{type Request, type Response}

/// Main router for all API endpoints
pub fn handle_request(req: Request) -> Response {
  case wisp.path_segments(req) {
    // Health check
    [] -> home(req)
    ["health"] -> health_check(req)

    // Base CRUD
    ["api", "bases"] -> bases_handler(req)
    ["api", "bases", base_id] -> base_handler(req, base_id)

    // Table CRUD
    ["api", "bases", base_id, "tables"] -> tables_handler(req, base_id)
    ["api", "bases", base_id, "tables", table_id] ->
      table_handler(req, base_id, table_id)

    // Row CRUD
    ["api", "bases", base_id, "tables", table_id, "rows"] ->
      rows_handler(req, base_id, table_id)
    ["api", "bases", base_id, "tables", table_id, "rows", row_id] ->
      row_handler(req, base_id, table_id, row_id)

    // Cell operations
    ["api", "bases", base_id, "tables", table_id, "rows", row_id, "cells", field_id] ->
      cell_handler(req, base_id, table_id, row_id, field_id)

    // Provenance
    ["api", "bases", base_id, "tables", table_id, "rows", row_id, "cells", field_id, "provenance"] ->
      provenance_handler(req, base_id, table_id, row_id, field_id)

    // Views
    ["api", "bases", base_id, "tables", table_id, "views"] ->
      views_handler(req, base_id, table_id)
    ["api", "bases", base_id, "tables", table_id, "views", view_id] ->
      view_handler(req, base_id, table_id, view_id)

    _ -> wisp.not_found()
  }
}

fn home(_req: Request) -> Response {
  let body = string_builder.from_string("{\"name\":\"FormBase\",\"version\":\"0.1.0\"}")
  wisp.json_response(body, 200)
}

fn health_check(_req: Request) -> Response {
  let body = string_builder.from_string("{\"status\":\"ok\"}")
  wisp.json_response(body, 200)
}

// Base handlers
fn bases_handler(req: Request) -> Response {
  case req.method {
    Get -> list_bases()
    Post -> create_base(req)
    _ -> wisp.method_not_allowed([Get, Post])
  }
}

fn base_handler(req: Request, base_id: String) -> Response {
  case req.method {
    Get -> get_base(base_id)
    Patch -> update_base(req, base_id)
    Delete -> delete_base(base_id)
    _ -> wisp.method_not_allowed([Get, Patch, Delete])
  }
}

// Table handlers
fn tables_handler(req: Request, base_id: String) -> Response {
  case req.method {
    Get -> list_tables(base_id)
    Post -> create_table(req, base_id)
    _ -> wisp.method_not_allowed([Get, Post])
  }
}

fn table_handler(req: Request, base_id: String, table_id: String) -> Response {
  case req.method {
    Get -> get_table(base_id, table_id)
    Patch -> update_table(req, base_id, table_id)
    Delete -> delete_table(base_id, table_id)
    _ -> wisp.method_not_allowed([Get, Patch, Delete])
  }
}

// Row handlers
fn rows_handler(req: Request, base_id: String, table_id: String) -> Response {
  case req.method {
    Get -> list_rows(base_id, table_id, req)
    Post -> create_row(req, base_id, table_id)
    _ -> wisp.method_not_allowed([Get, Post])
  }
}

fn row_handler(req: Request, base_id: String, table_id: String, row_id: String) -> Response {
  case req.method {
    Get -> get_row(base_id, table_id, row_id)
    Patch -> update_row(req, base_id, table_id, row_id)
    Delete -> delete_row(base_id, table_id, row_id)
    _ -> wisp.method_not_allowed([Get, Patch, Delete])
  }
}

// Cell handlers
fn cell_handler(req: Request, base_id: String, table_id: String, row_id: String, field_id: String) -> Response {
  case req.method {
    Get -> get_cell(base_id, table_id, row_id, field_id)
    Patch -> update_cell(req, base_id, table_id, row_id, field_id)
    _ -> wisp.method_not_allowed([Get, Patch])
  }
}

// Provenance handler
fn provenance_handler(_req: Request, base_id: String, table_id: String, row_id: String, field_id: String) -> Response {
  get_provenance(base_id, table_id, row_id, field_id)
}

// View handlers
fn views_handler(req: Request, base_id: String, table_id: String) -> Response {
  case req.method {
    Get -> list_views(base_id, table_id)
    Post -> create_view(req, base_id, table_id)
    _ -> wisp.method_not_allowed([Get, Post])
  }
}

fn view_handler(req: Request, base_id: String, table_id: String, view_id: String) -> Response {
  case req.method {
    Get -> get_view(base_id, table_id, view_id)
    Patch -> update_view(req, base_id, table_id, view_id)
    Delete -> delete_view(base_id, table_id, view_id)
    _ -> wisp.method_not_allowed([Get, Patch, Delete])
  }
}

// Placeholder implementations - will be replaced with FormDB calls

fn list_bases() -> Response {
  let body = string_builder.from_string("{\"bases\":[]}")
  wisp.json_response(body, 200)
}

fn create_base(_req: Request) -> Response {
  let body = string_builder.from_string("{\"id\":\"base_new\",\"name\":\"New Base\"}")
  wisp.json_response(body, 201)
}

fn get_base(_base_id: String) -> Response {
  let body = string_builder.from_string("{\"id\":\"base_demo\",\"name\":\"Demo Base\",\"tables\":[]}")
  wisp.json_response(body, 200)
}

fn update_base(_req: Request, _base_id: String) -> Response {
  let body = string_builder.from_string("{\"updated\":true}")
  wisp.json_response(body, 200)
}

fn delete_base(_base_id: String) -> Response {
  wisp.no_content()
}

fn list_tables(_base_id: String) -> Response {
  let body = string_builder.from_string("{\"tables\":[]}")
  wisp.json_response(body, 200)
}

fn create_table(_req: Request, _base_id: String) -> Response {
  let body = string_builder.from_string("{\"id\":\"tbl_new\",\"name\":\"New Table\"}")
  wisp.json_response(body, 201)
}

fn get_table(_base_id: String, _table_id: String) -> Response {
  let body = string_builder.from_string("{\"id\":\"tbl_demo\",\"name\":\"Demo Table\",\"fields\":[]}")
  wisp.json_response(body, 200)
}

fn update_table(_req: Request, _base_id: String, _table_id: String) -> Response {
  let body = string_builder.from_string("{\"updated\":true}")
  wisp.json_response(body, 200)
}

fn delete_table(_base_id: String, _table_id: String) -> Response {
  wisp.no_content()
}

fn list_rows(_base_id: String, _table_id: String, _req: Request) -> Response {
  let body = string_builder.from_string("{\"rows\":[]}")
  wisp.json_response(body, 200)
}

fn create_row(_req: Request, _base_id: String, _table_id: String) -> Response {
  let body = string_builder.from_string("{\"id\":\"row_new\"}")
  wisp.json_response(body, 201)
}

fn get_row(_base_id: String, _table_id: String, _row_id: String) -> Response {
  let body = string_builder.from_string("{\"id\":\"row_demo\",\"cells\":{}}")
  wisp.json_response(body, 200)
}

fn update_row(_req: Request, _base_id: String, _table_id: String, _row_id: String) -> Response {
  let body = string_builder.from_string("{\"updated\":true}")
  wisp.json_response(body, 200)
}

fn delete_row(_base_id: String, _table_id: String, _row_id: String) -> Response {
  wisp.no_content()
}

fn get_cell(_base_id: String, _table_id: String, _row_id: String, _field_id: String) -> Response {
  let body = string_builder.from_string("{\"value\":null}")
  wisp.json_response(body, 200)
}

fn update_cell(_req: Request, _base_id: String, _table_id: String, _row_id: String, _field_id: String) -> Response {
  let body = string_builder.from_string("{\"updated\":true}")
  wisp.json_response(body, 200)
}

fn get_provenance(_base_id: String, _table_id: String, _row_id: String, _field_id: String) -> Response {
  let body = string_builder.from_string("{\"entries\":[]}")
  wisp.json_response(body, 200)
}

fn list_views(_base_id: String, _table_id: String) -> Response {
  let body = string_builder.from_string("{\"views\":[]}")
  wisp.json_response(body, 200)
}

fn create_view(_req: Request, _base_id: String, _table_id: String) -> Response {
  let body = string_builder.from_string("{\"id\":\"view_new\"}")
  wisp.json_response(body, 201)
}

fn get_view(_base_id: String, _table_id: String, _view_id: String) -> Response {
  let body = string_builder.from_string("{\"id\":\"view_demo\",\"type\":\"grid\"}")
  wisp.json_response(body, 200)
}

fn update_view(_req: Request, _base_id: String, _table_id: String, _view_id: String) -> Response {
  let body = string_builder.from_string("{\"updated\":true}")
  wisp.json_response(body, 200)
}

fn delete_view(_base_id: String, _table_id: String, _view_id: String) -> Response {
  wisp.no_content()
}
