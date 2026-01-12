// SPDX-License-Identifier: AGPL-3.0-or-later
// State management for the grid view

open Types

// Rows in the current table view
let rowsAtom: Jotai.atom<array<row>> = Jotai.atom([])

// Selected cells (for multi-select)
type selection = {
  startRow: int,
  startCol: int,
  endRow: int,
  endCol: int,
}

let selectionAtom: Jotai.atom<option<selection>> = Jotai.atom(None)

// Currently editing cell
type editingCell = {
  rowId: string,
  fieldId: string,
}

let editingCellAtom: Jotai.atom<option<editingCell>> = Jotai.atom(None)

// Current edit value (string representation for input)
let editValueAtom: Jotai.atom<string> = Jotai.atom("")

// Pending cell updates (rowId.fieldId => newValue)
let pendingUpdatesAtom: Jotai.atom<dict<cellValue>> = Jotai.atom(Dict.make())

// Column widths (field id => width in px)
let columnWidthsAtom: Jotai.atom<dict<int>> = Jotai.atom(Dict.make())

// Row heights (row id => height in px)
let rowHeightsAtom: Jotai.atom<dict<int>> = Jotai.atom(Dict.make())

// Hidden columns
let hiddenColumnsAtom: Jotai.atom<array<string>> = Jotai.atom([])

// Sort configuration
type sortConfig = {
  fieldId: string,
  direction: [#Asc | #Desc],
}

let sortConfigAtom: Jotai.atom<option<sortConfig>> = Jotai.atom(None)

// Filter (FQL expression)
let filterAtom: Jotai.atom<option<string>> = Jotai.atom(None)
