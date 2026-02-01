; SPDX-License-Identifier: PMPL-1.0-or-later
; FormBase - Operational Playbook

(playbook
  (version "1.0")
  (name "formbase")
  (media-type "application/playbook+scheme")

  (build-commands
    (ui
      (setup "cd ui && deno task setup")
      (dev "cd ui && deno task dev")
      (build "cd ui && deno task build")
      (test "cd ui && deno task test")
      (lint "cd ui && deno task lint")
      (format "cd ui && deno task fmt")
      (storybook "cd ui && deno task storybook"))

    (server
      (build "cd server && gleam build")
      (test "cd server && gleam test")
      (run "cd server && gleam run")
      (format "cd server && gleam format")
      (docs "cd server && gleam docs build"))

    (full-stack
      (dev "just dev")
      (build "just build")
      (test "just test")
      (docker "podman-compose up")))

  (development-workflow
    (daily
      ("Pull latest changes")
      ("Run just dev to start both servers")
      ("Work on assigned feature")
      ("Run just test before committing")
      ("Update STATE.scm if progress made"))

    (before-commit
      ("deno task lint - no ReScript warnings")
      ("deno task test - all UI tests pass")
      ("gleam test - all server tests pass")
      ("gleam format - code formatted")
      ("Update SPEC.adoc if adding features")
      ("Update STATE.scm completion percentages"))

    (release
      ("Tag version in git")
      ("Build Docker image")
      ("Update CHANGELOG")
      ("Push to container registry")
      ("Update documentation")))

  (troubleshooting
    (issue "ReScript compilation errors"
      (cause "Type mismatch or missing import")
      (fix "Check error message, fix types, run deno task build"))

    (issue "Gleam tests failing"
      (cause "API contract changed or logic error")
      (fix "Check test output, update implementation or test"))

    (issue "WebSocket not connecting"
      (cause "Server not running or CORS issue")
      (fix "Check server logs, verify CORS config"))

    (issue "FormDB connection refused"
      (cause "FormDB not running or path incorrect")
      (fix "Start FormDB, check FORMDB_PATH env var"))

    (issue "Real-time sync not working"
      (cause "Yjs document not syncing")
      (fix "Check WebSocket connection, verify Yjs provider")))

  (common-tasks
    (task "Add new field type"
      (steps
        ("1. Add type definition to SPEC.adoc")
        ("2. Create server/src/fields/<type>.gleam")
        ("3. Create ui/src/fields/<Type>.res")
        ("4. Add to FieldTypeSelector.res")
        ("5. Add to server/src/fields/mod.gleam")
        ("6. Write tests")
        ("7. Update STATE.scm")))

    (task "Add new view type"
      (steps
        ("1. Add view spec to SPEC.adoc")
        ("2. Create server/src/views/<type>.gleam")
        ("3. Create ui/src/views/<Type>View.res")
        ("4. Add to ViewSwitcher.res")
        ("5. Implement keyboard navigation")
        ("6. Write tests")
        ("7. Add to Storybook")))

    (task "Add API endpoint"
      (steps
        ("1. Add to SPEC.adoc API section")
        ("2. Create handler in server/src/api/")
        ("3. Add route to server/src/router.gleam")
        ("4. Create client in ui/src/api/")
        ("5. Write integration test"))))

  (monitoring
    (health-checks
      ("API server responds to /health")
      ("WebSocket accepts connections")
      ("FormDB connection healthy")
      ("UI builds without errors"))

    (metrics
      ("API response time p95")
      ("WebSocket connection count")
      ("Active users per base")
      ("Cell updates per minute")))

  (deployment
    (local
      ("just dev - runs UI on :3000, API on :8080"))

    (docker
      ("podman-compose up - full stack in containers"))

    (production
      ("1. Build images: just docker-build")
      ("2. Push to registry: just docker-push")
      ("3. Deploy: kubectl apply -f k8s/"))))
