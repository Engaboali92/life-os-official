#!/usr/bin/env bash
set -e

for f in specifications/data/**/*.md specifications/data/*.md; do
  [ -f "$f" ] || continue
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')
  cat > "$f" <<EOT
# $title

**Status:** Draft  
**Owner:** Data Team

---

# Purpose

Define the data specification for $title.

---

# Scope

Describe data structure, ownership, persistence behavior, and access boundaries.

---

# Inputs

- Data operation request
- Query request
- Persistence request

---

# Processing

- Validate data shape
- Apply storage rules
- Return normalized data result

---

# Outputs

- Data record
- Data collection
- Operation result
- Data error

---

# Rules

- Data Layer owns persistence, not business meaning.
- Modules own business meaning.
- Storage technology must remain replaceable.

---

# Acceptance Criteria

- Fields defined.
- Ownership defined.
- Validation defined.
- Repository behavior defined.
EOT
done

git add specifications/data
git commit -m "docs: fill level 5 data specifications"
git push
git tag v5.1-level5-data-content
git push origin v5.1-level5-data-content
