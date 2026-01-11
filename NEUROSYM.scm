; SPDX-License-Identifier: AGPL-3.0-or-later
; FormBase - Neurosymbolic Integration Configuration

(neurosym
  (version "1.0")
  (name "formbase")
  (media-type "application/neurosym+scheme")

  (symbolic-layer
    (description "Type systems and FormDB provide symbolic guarantees")

    (components
      (rescript-types
        (purpose "UI type safety")
        (guarantees
          ("No null pointer exceptions in UI")
          ("Exhaustive pattern matching")
          ("Type-safe API calls")))

      (gleam-types
        (purpose "Backend type safety")
        (guarantees
          ("Type-safe request handling")
          ("Exhaustive error handling")
          ("No runtime type errors")))

      (formdb-provenance
        (purpose "Data lineage tracking")
        (guarantees
          ("Every change has actor, timestamp, rationale")
          ("Full reversibility")
          ("Audit trail")))

      (schema-validation
        (purpose "Data integrity")
        (guarantees
          ("Field types enforced")
          ("Required fields validated")
          ("Unique constraints checked")))))

  (neural-layer
    (description "AI assistance for user productivity")

    (capabilities
      (formula-suggestions
        (input "User starts typing formula")
        (output "Suggested completions based on schema")
        (verification "Formula parser validates syntax"))

      (field-type-inference
        (input "Pasted data or column name")
        (output "Suggested field type")
        (verification "User confirms before applying"))

      (filter-builder
        (input "Natural language query")
        (output "Structured filter configuration")
        (verification "Preview results before applying"))

      (automation-builder
        (input "Natural language description of workflow")
        (output "Trigger/action configuration")
        (verification "User reviews before enabling"))))

  (integration-points
    (smart-paste
      (neural "Detect structure in pasted data")
      (symbolic "Map to schema types")
      (feedback "User corrections improve detection"))

    (formula-assist
      (neural "Suggest formulas based on intent")
      (symbolic "Parser validates formula syntax")
      (feedback "Usage patterns inform suggestions"))

    (natural-language-filter
      (neural "Parse natural language to filter DSL")
      (symbolic "Execute filter against typed schema")
      (feedback "Filter corrections train model")))

  (trust-boundaries
    (trusted
      ("ReScript type checker")
      ("Gleam type checker")
      ("FormDB provenance system")
      ("Schema validation"))

    (verified-before-trust
      ("AI-suggested field types")
      ("AI-suggested formulas")
      ("AI-parsed filters")
      ("Imported data structure"))

    (never-trusted
      ("User input without validation")
      ("External webhooks without auth")
      ("Unvalidated file uploads"))))
