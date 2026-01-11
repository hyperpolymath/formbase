; SPDX-License-Identifier: AGPL-3.0-or-later
; FormBase - Project State

(state
  (metadata
    (version "0.1.0")
    (schema-version "1.0")
    (created "2026-01-11")
    (updated "2026-01-11")
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
    (phase "specification")
    (overall-completion 5)
    (components
      (specification 80 "README and SPEC complete")
      (ui-grid 0 "Not started")
      (ui-views 0 "Not started")
      (backend-api 0 "Not started")
      (realtime 0 "Not started")
      (automations 0 "Not started")
      (formdb-integration 0 "Not started"))
    (working-features
      ()))

  (route-to-mvp
    (milestone "Phase 0: Project Setup"
      (status "in-progress")
      (items
        ("Create GitHub repo" . done)
        ("Write README.adoc" . done)
        ("Write SPEC.adoc" . done)
        ("Create SCM files" . done)
        ("Set up ReScript project" . not-started)
        ("Set up Gleam project" . not-started)))

    (milestone "Phase 1: Core Grid"
      (status "not-started")
      (items
        ("Create/delete bases and tables")
        ("Add/edit/delete rows")
        ("Core field types (text, number, date, select)")
        ("Sort, filter, hide columns")
        ("Keyboard navigation")
        ("FormDB provenance integration")))

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
    (high-priority
      ("FormDB core not yet implemented"))
    (medium-priority
      ("Need to decide on grid component library vs custom"))
    (low-priority ()))

  (critical-next-actions
    (immediate
      ("Set up ReScript + React project in ui/")
      ("Set up Gleam project in server/"))
    (this-week
      ("Implement basic table schema in Gleam")
      ("Create grid component scaffold"))
    (this-month
      ("MVP grid view with basic CRUD")))

  (session-history
    (snapshot "2026-01-11"
      (accomplishments
        ("Created GitHub repo")
        ("Wrote comprehensive README.adoc")
        ("Wrote full SPEC.adoc (700+ lines)")
        ("Created all 6 SCM files")))))
