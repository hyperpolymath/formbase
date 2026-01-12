; SPDX-License-Identifier: AGPL-3.0-or-later
; FormBase - Project State

(state
  (metadata
    (version "0.1.0")
    (schema-version "1.0")
    (created "2026-01-11")
    (updated "2026-01-12")
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
    (overall-completion 20)
    (components
      (specification 100 "README, SPEC, and SCM files complete")
      (ui-grid 30 "Grid component scaffold, types, stores, API client")
      (ui-views 0 "Not started")
      (backend-api 40 "Full REST router, types, placeholder handlers")
      (realtime 0 "Not started")
      (automations 0 "Not started")
      (formdb-integration 25 "Client scaffold, FQL builder, types"))
    (working-features
      ("ReScript + React project structure"
       "Jotai state management bindings"
       "Grid component with cell rendering"
       "API client with all endpoints"
       "Gleam HTTP server with Wisp"
       "Full REST API router"
       "FormDB client interface scaffold"
       "FQL query builder"
       "Demo data for development")))

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
      ("Wire FormDB FFI calls in Gleam client")
      ("Implement cell editing in Grid component"))
    (this-week
      ("Connect UI to backend API")
      ("Implement basic CRUD operations end-to-end"))
    (this-month
      ("MVP grid view with basic CRUD")
      ("Provenance display for cells")))

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
        ("Created FQL query builder for type-safe queries")))))
