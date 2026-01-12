// SPDX-License-Identifier: AGPL-3.0-or-later

open Types

// Demo data for development
let demoTable: table = {
  id: "tbl_demo",
  name: "Projects",
  primaryFieldId: "fld_name",
  fields: [
    {id: "fld_name", name: "Name", fieldType: Text, required: true, defaultValue: None},
    {id: "fld_status", name: "Status", fieldType: Select(["Not Started", "In Progress", "Done"]), required: false, defaultValue: Some("Not Started")},
    {id: "fld_priority", name: "Priority", fieldType: Number, required: false, defaultValue: None},
    {id: "fld_due", name: "Due Date", fieldType: Date, required: false, defaultValue: None},
    {id: "fld_done", name: "Complete", fieldType: Checkbox, required: false, defaultValue: None},
  ],
}

let demoRows: array<row> = [
  {
    id: "row_1",
    createdAt: "2026-01-12T00:00:00Z",
    updatedAt: "2026-01-12T00:00:00Z",
    cells: Dict.fromArray([
      ("fld_name", {fieldId: "fld_name", value: TextValue("Build grid component"), provenance: []}),
      ("fld_status", {fieldId: "fld_status", value: SelectValue("In Progress"), provenance: []}),
      ("fld_priority", {fieldId: "fld_priority", value: NumberValue(1.0), provenance: []}),
      ("fld_done", {fieldId: "fld_done", value: CheckboxValue(false), provenance: []}),
    ]),
  },
  {
    id: "row_2",
    createdAt: "2026-01-12T00:00:00Z",
    updatedAt: "2026-01-12T00:00:00Z",
    cells: Dict.fromArray([
      ("fld_name", {fieldId: "fld_name", value: TextValue("Implement FormDB bindings"), provenance: []}),
      ("fld_status", {fieldId: "fld_status", value: SelectValue("Not Started"), provenance: []}),
      ("fld_priority", {fieldId: "fld_priority", value: NumberValue(2.0), provenance: []}),
      ("fld_done", {fieldId: "fld_done", value: CheckboxValue(false), provenance: []}),
    ]),
  },
  {
    id: "row_3",
    createdAt: "2026-01-12T00:00:00Z",
    updatedAt: "2026-01-12T00:00:00Z",
    cells: Dict.fromArray([
      ("fld_name", {fieldId: "fld_name", value: TextValue("Add real-time collaboration"), provenance: []}),
      ("fld_status", {fieldId: "fld_status", value: SelectValue("Not Started"), provenance: []}),
      ("fld_priority", {fieldId: "fld_priority", value: NumberValue(3.0), provenance: []}),
      ("fld_done", {fieldId: "fld_done", value: CheckboxValue(false), provenance: []}),
    ]),
  },
]

module Sidebar = {
  @react.component
  let make = () => {
    <aside className="sidebar">
      <div className="sidebar-section">
        <h3> {React.string("Bases")} </h3>
        <div className="sidebar-item active"> {React.string("Demo Base")} </div>
      </div>
      <div className="sidebar-section">
        <h3> {React.string("Tables")} </h3>
        <div className="sidebar-item active"> {React.string("Projects")} </div>
        <div className="sidebar-item"> {React.string("Tasks")} </div>
        <div className="sidebar-item"> {React.string("Team")} </div>
      </div>
    </aside>
  }
}

module ViewTabs = {
  @react.component
  let make = () => {
    <div className="view-tabs">
      <button className="view-tab active"> {React.string("Grid")} </button>
      <button className="view-tab"> {React.string("Kanban")} </button>
      <button className="view-tab"> {React.string("Calendar")} </button>
      <button className="view-tab"> {React.string("Gallery")} </button>
      <button className="view-tab"> {React.string("+ Add View")} </button>
    </div>
  }
}

module Toolbar = {
  @react.component
  let make = () => {
    <div className="toolbar">
      <button className="toolbar-button"> {React.string("Hide fields")} </button>
      <button className="toolbar-button"> {React.string("Filter")} </button>
      <button className="toolbar-button"> {React.string("Sort")} </button>
      <button className="toolbar-button"> {React.string("Group")} </button>
      <input type_="search" className="toolbar-search" placeholder="Search..." />
    </div>
  }
}

@react.component
let make = () => {
  let (rows, setRows) = React.useState(() => demoRows)

  // Handle cell updates
  let handleCellUpdate = (rowId: string, fieldId: string, newValue: cellValue) => {
    setRows(prevRows => {
      prevRows->Array.map(row => {
        if row.id == rowId {
          let newCells = row.cells->Dict.toArray->Array.map(((key, cell)) => {
            if key == fieldId {
              (key, {
                ...cell,
                value: newValue,
              })
            } else {
              (key, cell)
            }
          })->Dict.fromArray

          // Add the cell if it doesn't exist
          if !(newCells->Dict.keysToArray->Array.includes(fieldId)) {
            newCells->Dict.set(fieldId, {
              fieldId: fieldId,
              value: newValue,
              provenance: [],
            })
          }

          {
            ...row,
            cells: newCells,
            updatedAt: Date.toISOString(Date.make()),
          }
        } else {
          row
        }
      })
    })

    // TODO: Sync with backend via API
    Console.log2("Cell updated:", {"rowId": rowId, "fieldId": fieldId, "newValue": newValue})
  }

  // Handle adding a new row
  let handleAddRow = () => {
    let newRowId = "row_" ++ Int.toString(Array.length(rows) + 1) ++ "_" ++ Float.toString(Date.now())
    let now = Date.toISOString(Date.make())

    // Create empty cells with default values
    let emptyCells = demoTable.fields->Array.map(field => {
      let defaultValue = switch field.defaultValue {
      | Some(v) => TextValue(v)
      | None => NullValue
      }
      (field.id, {fieldId: field.id, value: defaultValue, provenance: []})
    })->Dict.fromArray

    let newRow: row = {
      id: newRowId,
      cells: emptyCells,
      createdAt: now,
      updatedAt: now,
    }

    setRows(prevRows => Array.concat(prevRows, [newRow]))

    // TODO: Sync with backend via API
    Console.log2("New row added:", newRowId)
  }

  <Jotai.Provider>
    <div className="formbase-app">
      <header className="formbase-header">
        <h1> {React.string("FormBase")} </h1>
        <p> {React.string("Open-source Airtable alternative with provenance tracking")} </p>
      </header>
      <main className="formbase-main">
        <Sidebar />
        <div style={{display: "flex", flexDirection: "column", flex: "1"}}>
          <ViewTabs />
          <Toolbar />
          <Grid table={demoTable} rows={rows} onCellUpdate={handleCellUpdate} onAddRow={handleAddRow} />
        </div>
      </main>
    </div>
  </Jotai.Provider>
}
