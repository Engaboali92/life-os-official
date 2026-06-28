# Event Naming Convention

**Document ID:** LOS-EVT-NAM-001

**Status:** Draft

**Owner:** Architecture Team

---

# Purpose

This specification defines the naming rules for all domain events produced within Life OS.

The objective is to guarantee consistency, readability, versioning, and interoperability across every layer.

---

# Naming Principles

- Event names use lowercase.
- Words are separated by hyphens.
- Names describe completed facts.
- Names are stable over time.
- Names are implementation-independent.

---

# Standard Pattern

<domain>-<action>

Examples:

- habit-created
- habit-completed
- task-created
- task-completed
- goal-completed
- prayer-recorded
- report-generated
- archive-completed

---

# Allowed Actions

- created
- updated
- deleted
- completed
- archived
- restored
- started
- stopped
- recorded
- generated
- calculated
- published
- synchronized
- imported
- exported
- failed
- cancelled

---

# Naming Rules

- Use singular domain names.
- Use past-tense actions.
- Avoid abbreviations.
- Avoid implementation details.
- Avoid technology-specific names.

---

# Versioning

- Event names remain stable.
- Payloads may evolve through versioning.
- Breaking changes require a new event version.

---

# Constraints

- Event names are globally unique.
- Event names are immutable after publication.
- Duplicate meanings are prohibited.

---

# Validation

- Event names follow the standard pattern.
- Action must be from the approved list.
- Domain must be registered.

---

# Security

- Only approved events may be published.
- Audit logging required.

---

# Acceptance Criteria

The Event Naming specification is complete only when:

- Pattern documented.
- Rules documented.
- Validation documented.
- Versioning documented.
- Security documented.
