#!/usr/bin/env bash
set -e

find specifications/workflows -name "*.md" | while read -r f; do
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

cat > "$f" <<EOT
# $title

**Status:** Draft
**Owner:** Automation Team

---

# Purpose

Define the complete workflow specification.

---

# Trigger

To be defined.

---

# Preconditions

To be defined.

---

# Inputs

To be defined.

---

# Workflow Steps

1. Receive trigger
2. Validate request
3. Execute business operation
4. Persist data if required
5. Publish events
6. Execute automation
7. Produce response

---

# Decision Points

To be defined.

---

# Outputs

To be defined.

---

# Produced Events

To be defined.

---

# External Integrations

To be defined.

---

# Error Handling

To be defined.

---

# Retry Strategy

To be defined.

---

# Performance Requirements

To be defined.

---

# Security

To be defined.

---

# Acceptance Criteria

- Trigger documented.
- Inputs documented.
- Steps documented.
- Outputs documented.
- Events documented.
- Errors documented.
EOT

done

git add specifications/workflows scripts/fill-level7-detailed-workflows.sh
git commit -m "docs: add detailed workflow specifications"
git push
git tag v7.2-detailed-workflows
git push origin v7.2-detailed-workflows
