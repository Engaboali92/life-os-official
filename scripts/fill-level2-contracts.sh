#!/usr/bin/env bash
set -e

for f in contracts/layers/*.md contracts/interfaces/*.md; do
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')
  cat > "$f" <<EOT
# $title

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Define the official contract for $title.

---

# Inputs

To be provided by the previous layer or component.

---

# Processing

Validate the request, preserve architectural boundaries, and pass structured data only.

---

# Outputs

Structured result, error, or event.

---

# Rules

- No direct bypass.
- No hidden dependency.
- No business logic outside its owner.
- All communication must be documented.

---

# Acceptance Criteria

- Contract approved.
- Inputs defined.
- Outputs defined.
- Errors defined.
- Tests linked.
EOT
done

git add contracts
git commit -m "docs: fill level 2 contract documents"
git push
git tag v2.1-level2-contracts-content
git push origin v2.1-level2-contracts-content
