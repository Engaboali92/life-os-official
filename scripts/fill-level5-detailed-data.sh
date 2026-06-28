#!/usr/bin/env bash
set -e

find specifications/data -name "*.md" | while read -r f; do
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

cat > "$f" <<EOT
# $title

**Status:** Draft
**Owner:** Data Team

---

# Purpose

Define the complete persistence specification.

---

# Ownership

Specify the owner of this data object.

---

# Structure

To be defined.

---

# Fields

To be defined.

---

# Validation Rules

To be defined.

---

# Relationships

To be defined.

---

# Lifecycle

- Create
- Read
- Update
- Delete
- Archive

---

# Indexing Strategy

To be defined.

---

# Repository Operations

To be defined.

---

# Constraints

To be defined.

---

# Security

To be defined.

---

# Backup

To be defined.

---

# Acceptance Criteria

- Structure documented.
- Ownership documented.
- Validation documented.
- Relationships documented.
- Repository operations documented.
EOT

done

git add specifications/data scripts/fill-level5-detailed-data.sh
git commit -m "docs: add detailed data specifications"
git push
git tag v5.2-detailed-data
git push origin v5.2-detailed-data
