#!/usr/bin/env bash
set -e

for f in specifications/events/**/*.md specifications/events/*.md; do
  [ -f "$f" ] || continue
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')
  cat > "$f" <<EOT
# $title

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Define event behavior for $title.

---

# Event Rule

Events describe something that already happened.

---

# Event Structure

- event_id
- event_type
- source
- timestamp
- payload
- correlation_id

---

# Inputs

- Domain result
- System result
- Automation result
- Integration result

---

# Processing

- Publish event
- Route event
- Store event when required
- Trigger subscribers

---

# Outputs

- Published event
- Event log
- Automation trigger

---

# Rules

- Events must be immutable.
- Events must be named clearly.
- Events must not contain secrets.
- Consumers must not depend on hidden event fields.

---

# Acceptance Criteria

- Event names defined.
- Payloads defined.
- Producers defined.
- Consumers defined.
EOT
done

git add specifications/events
git commit -m "docs: fill level 6 event specifications"
git push
git tag v6.1-level6-events-content
git push origin v6.1-level6-events-content
