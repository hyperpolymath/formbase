; SPDX-License-Identifier: AGPL-3.0-or-later
; FormBase - Meta Information

(meta
  (version "1.0")
  (name "formbase")
  (media-type "application/meta+scheme")

  (architecture-decisions
    (adr-001
      (status accepted)
      (date "2026-01-11")
      (title "ReScript for frontend")
      (context "Need type-safe UI development that compiles to JavaScript")
      (decision "Use ReScript with React for the frontend application")
      (consequences
        ("Full type safety across UI codebase")
        ("Excellent React integration")
        ("Fast compilation")
        ("Smaller community than TypeScript")))

    (adr-002
      (status accepted)
      (date "2026-01-11")
      (title "Gleam for backend")
      (context "Need a backend that handles concurrent connections well")
      (decision "Use Gleam on BEAM for the API server")
      (consequences
        ("Excellent concurrency from BEAM")
        ("Type safety")
        ("Can compile to JavaScript if needed")
        ("Smaller ecosystem than Elixir")))

    (adr-003
      (status accepted)
      (date "2026-01-11")
      (title "Yjs for real-time collaboration")
      (context "Need conflict-free real-time editing")
      (decision "Use Yjs CRDT library for collaborative features")
      (consequences
        ("Automatic conflict resolution")
        ("Offline-first by design")
        ("Proven in production (Notion, etc.)")
        ("Requires careful state management")))

    (adr-004
      (status proposed)
      (date "2026-01-11")
      (title "Custom grid component vs library")
      (context "Need a spreadsheet-like grid with excellent performance")
      (decision "Evaluate AG Grid vs custom implementation")
      (consequences
        ("AG Grid: faster to market, commercial license")
        ("Custom: full control, accessible, slower development"))))

  (development-practices
    (code-style
      (rescript "Follow ReScript style guide, use Core stdlib")
      (gleam "Follow Gleam stdlib conventions")
      (css "Tailwind CSS with component composition"))

    (security
      (principle "All API endpoints require authentication except public forms")
      (principle "Row-level security enforced at database layer")
      (principle "CSRF protection on all mutations")
      (principle "Rate limiting on public endpoints"))

    (testing
      (unit-tests "ReScript tests for UI logic")
      (integration "Gleam tests for API")
      (e2e "Playwright for critical user flows")
      (accessibility "aXe automated testing"))

    (versioning "Semantic versioning")

    (documentation
      (format "AsciiDoc for all documentation")
      (api "OpenAPI spec for REST endpoints")
      (components "Storybook for UI components"))

    (branching
      (main "main - stable releases")
      (development "dev - integration branch")
      (features "feat/* - feature branches")))

  (design-rationale
    (why-formdb-backend
      "FormBase is not just another Airtable clone. By building on FormDB,
       every cell change automatically has provenance, every operation is
       reversible, and data quality can be scored. These are table stakes
       for research, journalism, and any domain where trust matters.")

    (why-offline-first
      "Most spreadsheet tools assume constant connectivity. FormBase uses
       CRDTs to enable full functionality offline, with automatic sync
       when connectivity returns. Your work is never blocked by network.")

    (why-keyboard-first
      "Power users live in their keyboards. FormBase is designed for
       complete keyboard navigation, with mouse as enhancement not
       requirement. This also improves accessibility.")

    (why-self-hosted
      "Your data is yours. FormBase runs on your infrastructure, syncs
       to your cloud storage, and never phones home. No vendor lock-in,
       no surprise pricing changes, no data mining.")))
