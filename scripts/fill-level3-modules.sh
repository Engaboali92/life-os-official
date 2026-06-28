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

Define the $title business domain.

---

# Scope

This module owns its domain rules, operations, data meaning, and domain events.

---

# Inputs

- Domain requests
- User actions routed through Application Layer
- System events

---

# Processing

- Validate domain rules
- Execute domain behavior
- Produce domain result
- Emit domain events
- Request persistence through Data Layer

---

# Outputs

- Domain result
- Domain event
- Validation error
- State change request

---

# Dependencies

- Application Layer
- Kernel Layer
- Data Layer

---

# Rules

- No direct module-to-module dependency.
- No direct database access.
- No direct external integration.
- Business rules remain inside the module.

---

# Acceptance Criteria

- Inputs defined.
- Outputs defined.
- Business rules documented.
- Tests defined.
EOT
done

git add specifications/modules
git commit -m "docs: fill level 3 module specifications"
git push
git tag v3.1-level3-modules-content
git push origin v3.1-level3-modules-content
