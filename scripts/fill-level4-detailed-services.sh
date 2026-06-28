#!/usr/bin/env bash
set -e

for f in specifications/services/*/*.md; do
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

cat > "$f" <<EOT
# $title

**Status:** Draft
**Owner:** Backend Team

---

# Purpose

Provide a reusable application capability.

---

# Responsibilities

- Execute reusable logic.
- Coordinate lower-level operations.
- Return deterministic results.
- Never own business rules.

---

# Public Operations

To be defined.

---

# Inputs

To be defined.

---

# Outputs

To be defined.

---

# Validation

To be defined.

---

# Internal Processing

To be defined.

---

# Dependencies

- Kernel
- Data
- Other documented services only

---

# Events Produced

To be defined.

---

# Error Handling

To be defined.

---

# Performance Requirements

To be defined.

---

# Security

To be defined.

---

# Acceptance Criteria

- Operations documented.
- Inputs documented.
- Outputs documented.
- Dependencies documented.
- Events documented.
- Errors documented.
EOT

done

git add specifications/services scripts/fill-level4-detailed-services.sh
git commit -m "docs: add detailed service specifications"
git push
git tag v4.2-detailed-services
git push origin v4.2-detailed-services
