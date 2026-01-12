// SPDX-License-Identifier: AGPL-3.0-or-later
// Grid component - the core spreadsheet-like view

open Types

module Cell = {
  @react.component
  let make = (~row: row, ~field: fieldConfig, ~isEditing: bool, ~onStartEdit: unit => unit) => {
    let cell = row.cells->Js.Dict.get(field.id)
    let value = cell->Option.map(c => c.value)->Option.getOr(NullValue)

    let displayValue = switch value {
    | TextValue(s) => s
    | NumberValue(n) => Float.toString(n)
    | CheckboxValue(b) => b ? "[x]" : "[ ]"
    | SelectValue(s) => s
    | DateValue(d) => Js.Date.toLocaleDateString(d)
    | NullValue => ""
    | _ => "..."
    }

    <div
      className={"grid-cell" ++ (isEditing ? " editing" : "")}
      onClick={_ => onStartEdit()}
      role="gridcell"
      tabIndex=0>
      {React.string(displayValue)}
    </div>
  }
}

module HeaderCell = {
  @react.component
  let make = (~field: fieldConfig, ~width: int, ~onResize: int => unit) => {
    let icon = switch field.fieldType {
    | Text => "Aa"
    | Number => "#"
    | Select(_) => "v"
    | Date | DateTime => "D"
    | Checkbox => "[]"
    | Url => "@"
    | Email => "M"
    | _ => "?"
    }

    <div
      className="grid-header-cell"
      style={ReactDOM.Style.make(~width=Int.toString(width) ++ "px", ())}
      role="columnheader">
      <span className="field-icon"> {React.string(icon)} </span>
      <span className="field-name"> {React.string(field.name)} </span>
    </div>
  }
}

module Row = {
  @react.component
  let make = (
    ~row: row,
    ~fields: array<fieldConfig>,
    ~rowIndex: int,
    ~editingCell: option<GridStore.editingCell>,
    ~onStartEdit: (string, string) => unit,
  ) => {
    <div className="grid-row" role="row" data-row-index={Int.toString(rowIndex)}>
      <div className="grid-row-number"> {React.string(Int.toString(rowIndex + 1))} </div>
      {fields
      ->Array.mapWithIndex((field, i) => {
        let isEditing =
          editingCell->Option.map(e => e.rowId == row.id && e.fieldId == field.id)->Option.getOr(
            false,
          )
        <Cell
          key={field.id}
          row
          field
          isEditing
          onStartEdit={() => onStartEdit(row.id, field.id)}
        />
      })
      ->React.array}
    </div>
  }
}

@react.component
let make = (~table: table, ~rows: array<row>) => {
  let (editingCell, setEditingCell) = Jotai.useAtom(GridStore.editingCellAtom)
  let (columnWidths, _setColumnWidths) = Jotai.useAtom(GridStore.columnWidthsAtom)

  let visibleFields = table.fields

  let getColumnWidth = (fieldId: string) => {
    columnWidths->Js.Dict.get(fieldId)->Option.getOr(150)
  }

  let handleStartEdit = (rowId: string, fieldId: string) => {
    setEditingCell(_ => Some({GridStore.rowId: rowId, fieldId: fieldId}))
  }

  let handleKeyDown = (e: ReactEvent.Keyboard.t) => {
    let key = ReactEvent.Keyboard.key(e)
    switch key {
    | "Escape" => setEditingCell(_ => None)
    | "Tab" => () // TODO: Move to next cell
    | "Enter" => () // TODO: Confirm edit and move down
    | "ArrowUp" | "ArrowDown" | "ArrowLeft" | "ArrowRight" =>
      if editingCell->Option.isNone {
        // TODO: Navigate cells
        ()
      }
    | _ => ()
    }
  }

  <div className="grid-container" role="grid" onKeyDown={handleKeyDown} tabIndex=0>
    <div className="grid-header" role="rowgroup">
      <div className="grid-row" role="row">
        <div className="grid-row-number-header"> {React.string("#")} </div>
        {visibleFields
        ->Array.map(field => {
          <HeaderCell
            key={field.id}
            field
            width={getColumnWidth(field.id)}
            onResize={_ => ()}
          />
        })
        ->React.array}
      </div>
    </div>
    <div className="grid-body" role="rowgroup">
      {rows
      ->Array.mapWithIndex((row, i) => {
        <Row key={row.id} row fields={visibleFields} rowIndex={i} editingCell onStartEdit={handleStartEdit} />
      })
      ->React.array}
    </div>
  </div>
}
