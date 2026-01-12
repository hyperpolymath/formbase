; SPDX-License-Identifier: AGPL-3.0-or-later
; FormBase - Project State

(state
  (metadata
    (version "0.1.0")
    (schema-version "1.0")
    (created "2026-01-11")
    (updated "2026-01-12T14:00:00Z")
    (project "formbase")
    (repo "https://github.com/hyperpolymath/formbase"))

  (project-context
    (name "FormBase")
    (tagline "Open-source Airtable alternative with provenance tracking")
    (tech-stack
      (frontend "ReScript" "React" "Jotai")
      (backend "Gleam" "BEAM")
      (database "FormDB")
      (realtime "Yjs" "WebSocket")))

  (current-position
    (phase "implementation")
    (overall-completion 50)
    (components
      (specification 100 "README, SPEC, and SCM files complete")
      (ui-grid 85 "Grid with editing, keyboard nav, add/delete row, filtering, API wired")
      (ui-views 0 "Not started")
      (backend-api 80 "Full REST router with CRUD handlers, running on 8080")
      (realtime 0 "Not started")
      (automations 0 "Not started")
      (formdb-integration 30 "Mock client working, needs real NIF bindings"))
    (working-features
      ("ReScript + React project structure"
       "Jotai state management bindings"
       "Grid component with cell editing (click to edit)"
       "Keyboard navigation (arrow keys, Enter, Tab, Escape)"
       "Add row button with optimistic updates"
       "Delete row with Y/N confirmation"
       "Date picker with native HTML5 input"
       "Filter panel with 10 operators"
       "API client with all endpoints"
       "Gleam HTTP server with Wisp on port 8080"
       "Full REST API router with CRUD handlers"
       "FormDB mock client for development"
       "Vite dev server"
       "Demo data with dates")))

  (route-to-mvp
    (milestone "Phase 0: Project Setup"
      (status "complete")
      (items
        ("Create GitHub repo" . done)
        ("Write README.adoc" . done)
        ("Write SPEC.adoc" . done)
        ("Create SCM files" . done)
        ("Set up ReScript project" . done)
        ("Set up Gleam project" . done)))

    (milestone "Phase 1: Core Grid"
      (status "in-progress")
      (items
        ("Create/delete bases and tables" . scaffolded)
        ("Add/edit/delete rows" . scaffolded)
        ("Core field types (text, number, date, select)" . partial)
        ("Sort, filter, hide columns" . scaffolded)
        ("Keyboard navigation" . scaffolded)
        ("FormDB provenance integration" . scaffolded)))

    (milestone "Phase 2: Views"
      (status "not-started")
      (items
        ("Kanban view")
        ("Calendar view")
        ("Gallery view")
        ("Form builder")))

    (milestone "Phase 3: Collaboration"
      (status "not-started")
      (items
        ("Real-time cursors (Yjs)")
        ("Cell comments")
        ("Activity feed from provenance")
        ("@mentions")))

    (milestone "Phase 4: Automations"
      (status "not-started")
      (items
        ("Trigger/action system")
        ("Webhooks")
        ("Email notifications")
        ("Scheduled tasks")))

    (milestone "Phase 5: FormDB Superpowers"
      (status "not-started")
      (items
        ("Provenance view")
        ("Time travel UI")
        ("PROMPT scoring")
        ("Proof export"))))

  (blockers-and-issues
    (critical ())
    (high-priority ())
    (medium-priority
      ("FormDB Zig FFI integration needs implementation"))
    (low-priority
      ("Need to decide on grid component library vs custom")))

  (critical-next-actions
    (immediate
      ("Add sorting capability")
      ("Add multi-select dropdown field type")
      ("Implement column hiding"))
    (this-week
      ("Connect to real FormDB - replace mock client with NIF bindings")
      ("Add column resizing"))
    (this-month
      ("Real-time collaboration with Yjs")
      ("Provenance display for cells")
      ("MVP grid view complete")))

  (session-history
    (snapshot "2026-01-11"
      (accomplishments
        ("Created GitHub repo")
        ("Wrote comprehensive README.adoc")
        ("Wrote full SPEC.adoc (700+ lines)")
        ("Created all 6 SCM files")))
    (snapshot "2026-01-12"
      (accomplishments
        ("Removed outdated blocker - FormDB M1-M5 complete")
        ("Set up ReScript + React project in ui/")
        ("Created Types.res with all field types and data structures")
        ("Created Jotai bindings and state stores (BaseStore, GridStore)")
        ("Created API client with full CRUD endpoints")
        ("Created Grid component with Cell, HeaderCell, Row modules")
        ("Created main.css with complete grid styling")
        ("Updated App.res with demo data and full app layout")
        ("Set up Gleam server with Wisp framework")
        ("Created full REST API router with all endpoints")
        ("Created types.gleam with all data types")
        ("Created FormDB client scaffold with connection, query, mutation APIs")
        ("Created FQL query builder for type-safe queries")))
    (snapshot "2026-01-12T04:00:00Z"
      (accomplishments
        ("Implemented cell editing with click-to-edit UI")
        ("Added Add Row button with optimistic updates")
        ("Implemented keyboard navigation (arrow keys, Enter, Tab, Escape)")
        ("Rewrote router.gleam with correct Gleam decode API")
        ("Fixed formbase_server.gleam with mist.start and envoy")
        ("Wired API calls from UI to backend (updateCell, createRow)")
        ("Fixed @rescript/runtime resolution (v12.x, vite.config.js)")
        ("Backend running on port 8080, UI on port 5173")
        ("Full end-to-end demo working with 3 sample rows")))
    (snapshot "2026-01-12T12:00:00Z"
      (accomplishments
        ("Implemented row deletion with Y/N confirmation UI")
        ("Added delete button that appears on hover in row number column")
        ("Added handleDeleteRow with optimistic update and API sync")
        ("Added CSS styles for delete button and confirmation states")
        ("Fixed vite.config.js npm compatibility (removed npm: protocol)")))
    (snapshot "2026-01-12T14:00:00Z"
      (accomplishments
        ("Added date values to demo data for date picker demonstration")
        ("Implemented filtering capability with FilterPanel component")
        ("Added 10 filter operators (Contains, Is, GreaterThan, IsEmpty, etc.)")
        ("Added filter state management with Jotai atoms")
        ("Added cellMatchesFilter and applyFilters helper functions")
        ("Added toolbar filter toggle button with active filter badge")
        ("Added comprehensive CSS for filter panel UI")))))
