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

// Column widths (field id => width in px)
let columnWidthsAtom: Jotai.atom<Js.Dict.t<int>> = Jotai.atom(Js.Dict.empty())

// Row heights (row id => height in px)
let rowHeightsAtom: Jotai.atom<Js.Dict.t<int>> = Jotai.atom(Js.Dict.empty())

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
