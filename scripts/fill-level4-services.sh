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

Define the reusable application capability provided by $title.

---

# Scope

The service coordinates reusable operations without owning module business rules.

---

# Inputs

- Application requests
- Module requests
- Kernel service requests

---

# Processing

- Receive service request
- Validate request structure
- Coordinate required operation
- Return structured result

---

# Outputs

- Service result
- Service error
- Event request
- Data request

---

# Dependencies

- Application Layer
- Kernel Layer
- Data Layer when required

---

# Rules

- No UI logic.
- No direct external integration.
- No business domain ownership unless delegated by module contract.

---

# Acceptance Criteria

- Service contract defined.
- Inputs and outputs defined.
- Tests defined.
EOT
done

git add specifications/services
git commit -m "docs: fill level 4 service specifications"
git push
git tag v4.1-level4-services-content
git push origin v4.1-level4-services-content
