; SPDX-License-Identifier: PMPL-1.0-or-later
; FormBase - Ecosystem Position

(ecosystem
  (version "1.0")
  (name "formbase")
  (type "application")
  (purpose "Open-source Airtable alternative with provenance tracking")

  (position-in-ecosystem
    (role "End-user spreadsheet-database application")
    (layer "Application layer")
    (users "Non-technical users, researchers, teams, small businesses"))

  (related-projects
    (project "formdb"
      (relationship foundation)
      (url "https://github.com/hyperpolymath/formdb")
      (description "The narrative-first database that powers FormBase")
      (integration "All data stored in FormDB with provenance"))

    (project "fqldt"
      (relationship sibling-standard)
      (url "https://github.com/hyperpolymath/fqldt")
      (description "Dependently-typed query language")
      (integration "Formulas may use FQLdt for type-checked expressions"))

    (project "formdb-studio"
      (relationship sibling-standard)
      (url "https://github.com/hyperpolymath/formdb-studio")
      (description "Admin GUI for FormDB")
      (integration "FormBase for end-users, Studio for admins/developers"))

    (project "formdb-debugger"
      (relationship sibling-standard)
      (url "https://github.com/hyperpolymath/formdb-debugger")
      (description "Proof-carrying database debugger")
      (integration "Debug and recover FormBase data with proofs"))

    (project "bofig"
      (relationship potential-consumer)
      (url "https://github.com/hyperpolymath/bofig")
      (description "Evidence graph for investigative journalism")
      (integration "BoFIG could embed FormBase for evidence management"))

    (project "zotero-formdb"
      (relationship sibling-standard)
      (url "https://github.com/hyperpolymath/zotero-formdb")
      (description "Reference manager with PROMPT scores")
      (integration "Shared PROMPT scoring system"))

    (project "nocodb"
      (relationship inspiration)
      (url "https://github.com/nocodb/nocodb")
      (description "Open source Airtable alternative")
      (integration "UX inspiration, not code sharing"))

    (project "baserow"
      (relationship inspiration)
      (url "https://github.com/bram2w/baserow")
      (description "Self-hosted database")
      (integration "UX inspiration, not code sharing"))

    (project "yjs"
      (relationship dependency)
      (url "https://github.com/yjs/yjs")
      (description "CRDT framework for collaboration")
      (integration "Real-time sync and offline support")))

  (what-this-is
    ("A spreadsheet-database hybrid for non-technical users")
    ("An Airtable alternative with provenance built-in")
    ("A self-hosted, offline-first data management tool")
    ("A collaborative workspace with real-time sync")
    ("A research-grade data collection platform with PROMPT scores"))

  (what-this-is-not
    ("Not a replacement for Excel/Sheets (different use case)")
    ("Not a general-purpose database admin tool (use FormDB Studio)")
    ("Not a BI/analytics platform (use Metabase etc.)")
    ("Not a form builder only (forms are one view type)")
    ("Not a low-code app builder (focused on data, not apps)")))
