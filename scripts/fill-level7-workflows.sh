#!/usr/bin/env bash
set -e

for f in specifications/workflows/**/*.md; do
  [ -f "$f" ] || continue
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')
  cat > "$f" <<EOT
# $title

**Status:** Draft  
**Owner:** Automation Team

---

# Purpose

Define the workflow for $title.

---

# Trigger

Describe what starts this workflow.

---

# Inputs

- Command
- Event
- Schedule
- External trigger

---

# Steps

1. Receive trigger
2. Validate request
3. Call required layer or service
4. Persist result if needed
5. Emit event
6. Return or log result

---

# Outputs

- Workflow result
- Event
- Log
- Notification when required

---

# Error Handling

- Invalid input returns structured error.
- Failed step logs error.
- Retry only when explicitly configured.

---

# Rules

- Workflow must not own business logic.
- Business behavior belongs to modules.
- Shared behavior belongs to Kernel.

---

# Acceptance Criteria

- Trigger defined.
- Steps defined.
- Outputs defined.
- Errors defined.
- Tests defined.
EOT
done

git add specifications/workflows
git commit -m "docs: fill level 7 workflow specifications"
git push
git tag v7.1-level7-workflows-content
git push origin v7.1-level7-workflows-content
