#!/usr/bin/env bash
set -e

for f in contracts/layers/*.md; do
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

  cat > "$f" <<EOT
# $title

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Define the official architectural contract for the $title.

---

# Responsibility Boundary

This layer must perform only its documented responsibilities and must not bypass adjacent layers.

---

# Allowed Inputs

- Requests from approved upstream layers
- Structured payloads
- System metadata
- Approved events when applicable

---

# Required Processing

- Validate input structure
- Execute only layer-owned responsibilities
- Return structured output
- Report structured errors
- Preserve architectural boundaries

---

# Allowed Outputs

- Structured result
- Structured error
- Event
- Request to approved downstream layer

---

# Forbidden Behavior

- Bypassing adjacent layers
- Owning another layer's responsibility
- Hidden dependencies
- Direct access to forbidden storage or integrations
- Business logic outside Module Layer
- Shared system logic outside Kernel Layer

---

# Dependencies

Dependencies must be explicit and documented.

---

# Error Contract

All errors must include:

- error_code
- message
- source
- severity
- correlation_id

---

# Test Contract

This layer must be tested for:

- Valid input
- Invalid input
- Boundary violations
- Dependency failures
- Correct output structure

---

# Acceptance Criteria

- Inputs approved
- Outputs approved
- Forbidden behavior documented
- Error contract documented
- Tests linked
EOT
done

git add contracts/layers scripts/fill-level2-detailed-layer-contracts.sh
git commit -m "docs: add detailed layer contracts"
git push
git tag v2.3-detailed-layer-contracts
git push origin v2.3-detailed-layer-contracts
