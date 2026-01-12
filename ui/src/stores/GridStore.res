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

// Filter configuration
type filterOperator =
  | Contains
  | DoesNotContain
  | Is
  | IsNot
  | IsEmpty
  | IsNotEmpty
  | GreaterThan
  | LessThan
  | GreaterOrEqual
  | LessOrEqual

type filterCondition = {
  id: string,
  fieldId: string,
  operator: filterOperator,
  value: string,
}

let filtersAtom: Jotai.atom<array<filterCondition>> = Jotai.atom([])

// Filter conjunction (AND/OR)
let filterConjunctionAtom: Jotai.atom<[#And | #Or]> = Jotai.atom(#And)

// Filter (FQL expression) - legacy
let filterAtom: Jotai.atom<option<string>> = Jotai.atom(None)

// Helper to check if a cell value matches a filter condition
let cellMatchesFilter = (value: cellValue, operator: filterOperator, filterValue: string): bool => {
  let strValue = switch value {
  | TextValue(s) => s
  | NumberValue(n) => Float.toString(n)
  | SelectValue(s) => s
  | MultiSelectValue(arr) => arr->Array.join(", ")
  | DateValue(d) => Date.toISOString(d)->String.slice(~start=0, ~end=10)
  | CheckboxValue(b) => b ? "true" : "false"
  | NullValue => ""
  | _ => ""
  }

  switch operator {
  | Contains => strValue->String.toLowerCase->String.includes(filterValue->String.toLowerCase)
  | DoesNotContain => !(strValue->String.toLowerCase->String.includes(filterValue->String.toLowerCase))
  | Is => strValue->String.toLowerCase == filterValue->String.toLowerCase
  | IsNot => strValue->String.toLowerCase != filterValue->String.toLowerCase
  | IsEmpty => strValue == ""
  | IsNotEmpty => strValue != ""
  | GreaterThan =>
    switch (Float.fromString(strValue), Float.fromString(filterValue)) {
    | (Some(a), Some(b)) => a > b
    | _ => strValue > filterValue
    }
  | LessThan =>
    switch (Float.fromString(strValue), Float.fromString(filterValue)) {
    | (Some(a), Some(b)) => a < b
    | _ => strValue < filterValue
    }
  | GreaterOrEqual =>
    switch (Float.fromString(strValue), Float.fromString(filterValue)) {
    | (Some(a), Some(b)) => a >= b
    | _ => strValue >= filterValue
    }
  | LessOrEqual =>
    switch (Float.fromString(strValue), Float.fromString(filterValue)) {
    | (Some(a), Some(b)) => a <= b
    | _ => strValue <= filterValue
    }
  }
}

// Apply filters to rows
let applyFilters = (
  rows: array<row>,
  filters: array<filterCondition>,
  conjunction: [#And | #Or],
): array<row> => {
  if Array.length(filters) == 0 {
    rows
  } else {
    rows->Array.filter(row => {
      let results = filters->Array.map(filter => {
        let cell = row.cells->Dict.get(filter.fieldId)
        let value = cell->Option.map(c => c.value)->Option.getOr(NullValue)
        cellMatchesFilter(value, filter.operator, filter.value)
      })

      switch conjunction {
      | #And => results->Array.every(r => r)
      | #Or => results->Array.some(r => r)
      }
    })
  }
}
