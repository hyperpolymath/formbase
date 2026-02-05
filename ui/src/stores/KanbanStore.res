// SPDX-License-Identifier: PMPL-1.0-or-later
// Kanban View Store

open Types
open Jotai

// Selected view configuration
let selectedViewAtom: atom<option<viewConfig>> = Jotai.atom(None)

// Group by field for Kanban
let kanbanGroupByFieldAtom: atom<option<string>> = Jotai.atom(None)

// Compute Kanban columns from rows and group field
let kanbanColumnsAtom: derivedAtom<array<(string, array<row>)>> = Jotai.derivedAtom(get => {
  let groupByField = get(kanbanGroupByFieldAtom)
  let rows = get(GridStore.rowsAtom)

  switch groupByField {
  | None => []
  | Some(fieldId) => {
      // This will be computed based on the field options
      // For now, return empty - will be populated by the component
      []
    }
  }
})

// Update row status (move card to different column)
let updateRowStatus: (string, string, cellValue) => Promise.t<unit> = async (
  rowId,
  fieldId,
  newValue,
) => {
  // Call API to update the row
  let response = await Fetch.fetch(
    `/api/rows/${rowId}`,
    {
      method: "PATCH",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify({
        "fieldId": fieldId,
        "value": newValue,
      }),
    },
  )

  if response.status >= 200 && response.status < 300 {
    // Success - the component will refetch data
    Promise.resolve()
  } else {
    Promise.reject(Exn.raiseError("Failed to update row"))
  }
}
