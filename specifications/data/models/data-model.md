# Data Model

**Document ID:** LOS-DAT-MDL-001

**Status:** Draft

**Owner:** Data Team

---

# Purpose

The Data Model defines the logical structure of all persistent business data managed by Life OS.

It establishes ownership boundaries, relationships, consistency rules, and long-term maintainability.

---

# Design Principles

- Domain-driven ownership.
- Single source of truth.
- Immutable identifiers.
- Explicit relationships.
- Normalized business data.
- Append-only historical records.
- Auditability by design.

---

# Root Entities

- User
- Habit
- Task
- Goal
- Log
- Event

---

# Entity Relationships

User
├── Habits
├── Tasks
├── Goals
├── Logs
└── Events

Goal
└── Tasks

Task
└── Logs

Habit
└── Logs

Event
└── Business Entity

---

# Identity Strategy

- UUID primary keys.
- Immutable identifiers.
- No business meaning inside identifiers.

---

# Referential Integrity

- Every business entity references exactly one User.
- Foreign keys enforce ownership.
- Cascading deletes are prohibited.
- Archiving preserves relationships.

---

# Audit Strategy

- Every write operation generates an audit log.
- Domain events are stored independently.
- Historical data remains immutable.

---

# Versioning

- Schema changes are migration-based.
- Backward compatibility is preferred.
- Entity versions are independently managed.

---

# Constraints

- Required fields enforced.
- Referential integrity enforced.
- Ownership enforced.
- Immutable identifiers.
- Immutable historical records.

---

# Performance

- Indexed UUID identifiers.
- Indexed foreign keys.
- Indexed timestamps.
- Optimized pagination.
- Optimized archival queries.

---

# Security

- Row ownership enforced.
- Authorization required.
- Audit logging mandatory.

---

# Acceptance Criteria

The Data Model is complete only when:

- Entities documented.
- Relationships documented.
- Constraints documented.
- Integrity rules documented.
- Performance requirements documented.
