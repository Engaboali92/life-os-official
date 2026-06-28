# Habit Entity

**Document ID:** LOS-DAT-ENT-002

**Status:** Draft

**Owner:** Data Team

---

# Purpose

The Habit entity represents a recurring activity tracked by Life OS.

It is the canonical source for habit configuration and lifecycle management.

---

# Responsibilities

- Store habit definition.
- Store recurrence configuration.
- Track habit state.
- Support statistics generation.
- Support historical reporting.

---

# Attributes

| Name | Type | Required |
|------|------|----------|
| id | UUID | Yes |
| userId | UUID | Yes |
| title | String | Yes |
| description | String | No |
| category | String | Yes |
| frequency | String | Yes |
| targetValue | Integer | No |
| unit | String | No |
| status | Enum | Yes |
| createdAt | Timestamp | Yes |
| updatedAt | Timestamp | Yes |
| archivedAt | Timestamp | No |

---

# Relationships

- Belongs to User
- Produces Habit Logs
- Produces Statistics
- Generates Domain Events

---

# Constraints

- Identifier is immutable.
- Title is required.
- Frequency must be valid.
- Archived habits are read-only.

---

# Validation Rules

- Required fields cannot be empty.
- Frequency must match supported schedules.
- Target value must be positive when provided.
- Category must exist.

---

# Lifecycle

Created

↓

Active

↓

Paused

↓

Archived

---

# Security

- Accessible only by the owning user.
- Audit logging required.
- Ownership cannot change.

---

# Acceptance Criteria

- Attributes documented.
- Relationships documented.
- Validation documented.
- Constraints documented.
