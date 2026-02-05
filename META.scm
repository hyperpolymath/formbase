; SPDX-License-Identifier: PMPL-1.0-or-later
; FormBase - Meta Information

(meta
  (version "1.0")
  (name "glyphbase")
  (formerly "formbase")
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
      (status accepted)
      (date "2026-01-11")
      (title "Custom grid component vs library")
      (context "Need a spreadsheet-like grid with excellent performance")
      (decision "Build custom grid component for full control and accessibility")
      (consequences
        ("Full control over rendering and behavior")
        ("Accessibility-first design from the ground up")
        ("No commercial license restrictions")
        ("Slower initial development but better long-term")))

    (adr-005
      (status accepted)
      (date "2026-02-05")
      (title "Formal verification with Idris2")
      (context "Need mathematical guarantees for critical data operations")
      (decision "Integrate Proven library (Idris2) for type-level correctness proofs")
      (consequences
        ("Type-level guarantees for CRUD operations")
        ("Provable correctness for formula evaluation")
        ("Steeper learning curve for contributors")
        ("Compile-time verification of data integrity")
        ("Integration with rescript-dom-mounter for UI proofs")))

    (adr-006
      (status accepted)
      (date "2026-02-05")
      (title "High-assurance DOM rendering")
      (context "UI bugs in data management apps can cause data loss")
      (decision "Use rescript-dom-mounter for critical UI components")
      (consequences
        ("Formal verification of DOM rendering correctness")
        ("Prevention of XSS and injection attacks at type level")
        ("Better error messages during development")
        ("Integration with Proven library for end-to-end proofs")))

    (adr-007
      (status accepted)
      (date "2026-02-05")
      (title "GitHub Pages + Docker deployment")
      (context "Need simple deployment with custom domain support")
      (decision "Use GitHub Pages for docs/landing, Docker for application")
      (consequences
        ("Free hosting for documentation site")
        ("Custom domain (glyphbase.lithoglyph.org)")
        ("Multi-arch Docker images (amd64, arm64)")
        ("Automated releases to ghcr.io")
        ("6 installation methods for different use cases"))))

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
    (why-lithoglyph-backend
      "Glyphbase is not just another Airtable clone. By building on Lithoglyph,
       every cell change is carved in stone with provenance, every operation is
       mathematically reversible, and data quality can be scored via PROMPT.
       These guarantees are essential for research, journalism, legal work,
       and any domain where trust and auditability matter.")

    (why-formal-verification
      "Data management applications have a unique responsibility: users trust
       them with critical information. By using Idris2 for formal verification,
       we provide mathematical proofs that our CRUD operations are correct,
       formulas are evaluated properly, and UI rendering cannot introduce
       data corruption. This level of assurance is unprecedented in spreadsheet
       software and sets a new standard for data integrity.")

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
