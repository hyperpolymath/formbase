; SPDX-License-Identifier: AGPL-3.0-or-later
; FormBase - AI Agent Interaction Patterns

(agentic
  (version "1.0")
  (name "formbase")
  (media-type "application/agentic+scheme")

  (agent-capabilities
    (can-do
      ("Read and modify ReScript UI code")
      ("Read and modify Gleam backend code")
      ("Run deno task commands for UI development")
      ("Run gleam build/test commands")
      ("Create new components in ui/src/components/")
      ("Create new API endpoints in server/src/")
      ("Update SPEC.adoc with new features")
      ("Update STATE.scm with progress"))

    (should-ask
      ("Before changing data model in SPEC.adoc")
      ("Before adding new dependencies")
      ("Before modifying authentication/authorization")
      ("When multiple valid UI patterns exist"))

    (cannot-do
      ("Access user data in production")
      ("Modify FormDB core (separate repo)")
      ("Deploy to production")))

  (interaction-patterns
    (pattern "new-field-type"
      (trigger "User asks to add a new field type")
      (steps
        ("Add type definition to SPEC.adoc")
        ("Create Gleam type in server/src/fields/")
        ("Create ReScript component in ui/src/fields/")
        ("Add to field type selector")
        ("Write tests for new field type")))

    (pattern "new-view-type"
      (trigger "User asks to add a new view")
      (steps
        ("Add view spec to SPEC.adoc")
        ("Create Gleam view config in server/src/views/")
        ("Create ReScript view component in ui/src/views/")
        ("Add to view switcher")
        ("Implement keyboard navigation")))

    (pattern "api-endpoint"
      (trigger "User asks to add API functionality")
      (steps
        ("Add endpoint to SPEC.adoc API section")
        ("Create Gleam handler in server/src/api/")
        ("Add route to server/src/router.gleam")
        ("Create ReScript API client in ui/src/api/")
        ("Write integration tests")))

    (pattern "ui-component"
      (trigger "User asks for new UI element")
      (steps
        ("Create ReScript component in ui/src/components/")
        ("Add to Storybook")
        ("Ensure keyboard accessibility")
        ("Add to relevant view"))))

  (file-ownership
    (spec "SPEC.adoc" "Source of truth - update when adding features")
    (ui "ui/**/*.res" "ReScript frontend code")
    (server "server/**/*.gleam" "Gleam backend code")
    (state "STATE.scm" "Update after significant work")
    (meta "META.scm" "Update for architectural decisions"))

  (safety-rules
    (rule "spec-first"
      "Add to SPEC.adoc before implementing new features")
    (rule "accessibility"
      "All UI components must be keyboard navigable")
    (rule "type-safety"
      "No use of any/unknown types without justification")
    (rule "test-before-commit"
      "Run gleam test and deno task test before marking complete")))
