#!/usr/bin/env bash
set -e

for f in specifications/apis/**/*.md specifications/apis/*.md; do
  [ -f "$f" ] || continue
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')
  cat > "$f" <<EOT
# $title

**Status:** Draft  
**Owner:** Integration Team

---

# Purpose

Define the API specification for $title.

---

# Scope

APIs expose documented access to Life OS capabilities.

---

# Request

## Method

To be defined.

## Endpoint

To be defined.

## Headers

To be defined.

## Body

To be defined.

---

# Processing

- Authenticate request
- Validate request
- Route to Command or Application Layer
- Return structured response

---

# Response

## Success

Structured success response.

## Error

Structured error response.

---

# Rules

- APIs must not bypass Command/Application flow.
- APIs must not expose internal implementation.
- APIs must not access database directly.

---

# Acceptance Criteria

- Endpoint defined.
- Request defined.
- Response defined.
- Errors defined.
- Tests defined.
EOT
done

git add specifications/apis
git commit -m "docs: fill level 8 api specifications"
git push
git tag v8.1-level8-apis-content
git push origin v8.1-level8-apis-content
