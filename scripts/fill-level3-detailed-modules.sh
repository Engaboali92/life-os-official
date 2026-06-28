#!/usr/bin/env bash
set -e

for f in specifications/modules/*/*.md; do
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

cat > "$f" <<EOT
# $title

**Status:** Draft
**Owner:** Modules Team

---

# Purpose

Define the complete business domain represented by this module.

---

# Responsibilities

- Own business rules.
- Own domain entities.
- Own domain events.
- Own business validation.
- Coordinate internal services.

---

# Public Commands

To be defined.

---

# Public Queries

To be defined.

---

# Internal Services

To be defined.

---

# Domain Events

To be defined.

---

# Workflows

To be defined.

---

# Data Ownership

To be defined.

---

# Business Rules

To be defined.

---

# Dependencies

- Application Layer
- Kernel Layer
- Data Layer

---

# Error Cases

To be defined.

---

# Acceptance Criteria

- Commands documented.
- Queries documented.
- Services documented.
- Events documented.
- Workflows documented.
- Business rules documented.
EOT

done

git add specifications/modules scripts/fill-level3-detailed-modules.sh
git commit -m "docs: add detailed module specifications"
git push
git tag v3.2-detailed-modules
git push origin v3.2-detailed-modules
