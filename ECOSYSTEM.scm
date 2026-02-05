; SPDX-License-Identifier: PMPL-1.0-or-later
; Glyphbase - Ecosystem Position

(ecosystem
  (version "1.0")
  (name "glyphbase")
  (type "application")
  (purpose "Open-source Airtable alternative with permanence and formal verification")
  (formerly "formbase")

  (position-in-ecosystem
    (role "End-user spreadsheet-database application with provenance")
    (layer "Application layer")
    (users "Non-technical users, researchers, teams, small businesses, scientists"))

  (related-projects
    (project "lithoglyph"
      (relationship foundation)
      (url "https://github.com/hyperpolymath/lithoglyph")
      (description "Stone-carved database engine with provenance and reversibility")
      (integration "All data stored in Lithoglyph with full audit trail"))

    (project "rescript-dom-mounter"
      (relationship dependency)
      (url "https://github.com/hyperpolymath/rescript-dom-mounter")
      (description "High-assurance DOM rendering library")
      (integration "Used for critical UI components requiring formal verification"))

    (project "proven"
      (relationship dependency)
      (url "https://github.com/hyperpolymath/proven")
      (description "Idris2 formal verification library")
      (integration "Type-level correctness proofs for data operations"))

    (project "gql-dt"
      (relationship sibling-standard)
      (url "https://github.com/hyperpolymath/gql-dt")
      (description "Glyph Query Language with dependent types")
      (integration "Advanced queries with type-level guarantees"))

    (project "lithoglyph-studio"
      (relationship sibling-standard)
      (url "https://github.com/hyperpolymath/lithoglyph-studio")
      (description "Admin GUI for Lithoglyph databases")
      (integration "Glyphbase for end-users, Studio for admins/developers"))

    (project "lithoglyph-debugger"
      (relationship sibling-standard)
      (url "https://github.com/hyperpolymath/lithoglyph-debugger")
      (description "Proof-carrying database debugger")
      (integration "Debug and recover Glyphbase data with proofs"))

    (project "bofig"
      (relationship potential-consumer)
      (url "https://github.com/hyperpolymath/bofig")
      (description "Evidence graph for investigative journalism")
      (integration "BoFIG could embed Glyphbase for evidence management"))

    (project "zotero-formbd"
      (relationship sibling-standard)
      (url "https://github.com/hyperpolymath/zotero-formbd")
      (description "Reference manager with PROMPT scores")
      (integration "Shared PROMPT scoring methodology"))

    (project "airtable"
      (relationship inspiration)
      (url "https://airtable.com")
      (description "Commercial spreadsheet-database hybrid")
      (integration "UX inspiration for views and interface design"))

    (project "nocodb"
      (relationship inspiration)
      (url "https://github.com/nocodb/nocodb")
      (description "Open source Airtable alternative")
      (integration "Reference for open-source implementation patterns"))

    (project "baserow"
      (relationship inspiration)
      (url "https://github.com/bram2w/baserow")
      (description "Self-hosted no-code database")
      (integration "Self-hosting deployment patterns"))

    (project "yjs"
      (relationship dependency)
      (url "https://github.com/yjs/yjs")
      (description "CRDT framework for real-time collaboration")
      (integration "Conflict-free multi-user editing and offline support")))

  (what-this-is
    ("A spreadsheet-database hybrid for non-technical users")
    ("An Airtable alternative with permanence - every change carved in stone")
    ("A self-hosted, offline-first data management platform")
    ("A collaborative workspace with real-time sync via CRDTs")
    ("A research-grade data platform with PROMPT quality scores")
    ("A formally verified application using Idris2 correctness proofs"))

  (what-this-is-not
    ("Not a replacement for Excel/Sheets - different collaboration model")
    ("Not a general-purpose database admin tool - use Lithoglyph Studio instead")
    ("Not a BI/analytics platform - use Metabase or similar")
    ("Not just a form builder - forms are one view type among many")
    ("Not a low-code app builder - focused on data management, not app development")))
