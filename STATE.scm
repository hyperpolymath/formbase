; SPDX-License-Identifier: PMPL-1.0-or-later
; FormBase - Project State

(state
  (metadata
    (version "0.2.0")
    (schema-version "1.0")
    (created "2026-01-11")
    (updated "2026-02-05T12:30:00Z")
    (project "glyphbase")
    (repo "https://github.com/hyperpolymath/glyphbase")
    (formerly "formbase"))

  (project-context
    (name "Glyphbase")
    (tagline "Carve your data in stone - Airtable alternative with permanence")
    (tech-stack
      (frontend "ReScript" "React" "Jotai")
      (high-assurance "rescript-dom-mounter")
      (formal-verification "Proven (Idris2)")
      (backend "Gleam" "BEAM")
      (database "Lithoglyph")
      (realtime "Yjs" "WebSocket")))

  (current-position
    (phase "deployment")
    (overall-completion 70)
    (components
      (specification 100 "README, SPEC, ROADMAP, and SCM files complete")
      (ui-grid 95 "Grid with editing, sorting, filtering, multi-select, column hiding")
      (ui-views 0 "Not started - v0.3.0 milestone")
      (backend-api 80 "Full REST router with CRUD handlers")
      (realtime 0 "Not started - v0.5.0 milestone")
      (automations 0 "Not started - v0.6.0 milestone")
      (lithoglyph-integration 30 "Mock client working, needs real NIF bindings")
      (deployment-infrastructure 100 "GitHub Pages, Docker, releases - COMPLETE")
      (formal-verification 0 "rescript-dom-mounter + Proven integration planned for v0.4.0"))
    (working-features
      ("ReScript + React project structure"
       "Jotai state management bindings"
       "Grid component with cell editing (click to edit)"
       "Keyboard navigation (arrow keys, Enter, Tab, Escape)"
       "Add row button with optimistic updates"
       "Delete row with Y/N confirmation"
       "Date picker with native HTML5 input"
       "Filter panel with 10 operators"
       "Column sorting (click header to toggle Asc/Desc/None)"
       "Multi-select dropdown field type with tag display"
       "Column hiding with hide fields panel"
       "API client with all endpoints"
       "Gleam HTTP server with Wisp on port 4000"
       "Full REST API router with CRUD handlers"
       "Lithoglyph mock client for development"
       "Vite dev server"
       "Demo data with dates and tags"
       "GitHub Pages landing page at glyphbase.lithoglyph.org"
       "Docker multi-stage builds (UI + Server)"
       "docker-compose production stack"
       "Multi-arch container images (amd64, arm64)"
       "Automated release workflow to ghcr.io"
       "Comprehensive installation guide (6 methods)")))

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
        ("Add/edit/delete rows" . done)
        ("Core field types (text, number, date, select, multi-select)" . done)
        ("Sort, filter, hide columns" . done)
        ("Keyboard navigation" . done)
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
      ("Add column resizing")
      ("Add search functionality")
      ("Implement undo/redo for cell edits"))
    (this-week
      ("Connect to real FormDB - replace mock client with NIF bindings")
      ("Add cell-level provenance display"))
    (this-month
      ("Real-time collaboration with Yjs")
      ("Provenance panel for cells")
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
        ("Added comprehensive CSS for filter panel UI")))
    (snapshot "2026-01-12T21:00:00Z"
      (accomplishments
        ("Implemented column sorting with click-to-sort headers")
        ("Added compareCellValues helper for type-aware sorting")
        ("Sort toggles Asc → Desc → Clear on repeated clicks")
        ("Added sort indicators (↑/↓) to sorted column headers")
        ("Implemented multi-select dropdown field type")
        ("Multi-select displays as styled tags, edits with checkbox dropdown")
        ("Added Tags field to demo data with sample values")
        ("Implemented column hiding with HideFieldsPanel component")
        ("Hide fields panel shows all fields with visibility toggles")
        ("Hidden column count shown in toolbar badge")
        ("Mutually exclusive panels (filter vs hide fields)")))))
