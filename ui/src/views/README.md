# Glyphbase Views

This directory contains different view components for rendering table data.

## KanbanView

Kanban board view with drag-and-drop functionality.

### Usage

```rescript
<KanbanView
  tableId="table-123"
  groupByFieldId="status-field-id"
  rows={allRows}
  fields={tableFields}
  onUpdateRow={(rowId, fieldId, newValue) => {
    // Handle row update
  }}
/>
```

### Features

- ✅ Drag-and-drop cards between columns
- ✅ Groups rows by Select or MultiSelect field
- ✅ Shows card count per column
- ✅ Responsive design
- ✅ Empty column placeholder
- ✅ Primary field as card title
- ✅ Shows first 3 fields as card metadata

### Props

| Prop | Type | Description |
|------|------|-------------|
| `tableId` | `string` | ID of the table being viewed |
| `groupByFieldId` | `string` | ID of the Select field to group by |
| `rows` | `array<row>` | Array of rows to display |
| `fields` | `array<fieldConfig>` | Array of field configurations |
| `onUpdateRow` | `(string, string, cellValue) => unit` | Callback when a card is moved |

### Styling

Import the Kanban CSS in your main application:

```javascript
import './styles/kanban.css';
```

## Future Views

### CalendarView (v0.3.0)
- Display rows as events on a calendar
- Group by date field
- Month/week/day views

### GalleryView (v0.3.0)
- Card-based layout with images
- Group by attachment field
- Masonry or grid layout

### FormView (v0.3.0)
- Public-facing form for data entry
- Field validation
- Success message customization
