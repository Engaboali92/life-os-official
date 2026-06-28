#!/usr/bin/env bash
set -e

find specifications/events -name "*.md" | while read -r f; do
  name=$(basename "$f" .md)
  title=$(echo "$name" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

cat > "$f" <<EOT
# $title

**Status:** Draft
**Owner:** Architecture Team

---

# Purpose

Define the complete event specification.

---

# Event Definition

Events represent facts that already happened inside or around Life OS.

---

# Event Naming

To be defined.

---

# Event Schema

- event_id
- event_type
- source
- timestamp
- correlation_id
- causation_id
- payload
- metadata

---

# Producers

To be defined.

---

# Consumers

To be defined.

---

# Payload

To be defined.

---

# Processing

To be defined.

---

# Storage

To be defined.

---

# Retention

To be defined.

---

# Error Handling

To be defined.

---

# Security

- Events must not expose secrets.
- Sensitive payloads must be protected.
- Event access must follow authorization rules.

---

# Acceptance Criteria

- Event names documented.
- Schema documented.
- Producers documented.
- Consumers documented.
- Payloads documented.
- Security rules documented.
EOT

done

git add specifications/events scripts/fill-level6-detailed-events.sh
git commit -m "docs: add detailed event specifications"
git push
git tag v6.2-detailed-events
git push origin v6.2-detailed-events
