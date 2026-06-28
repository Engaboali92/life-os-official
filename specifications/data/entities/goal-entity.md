# Goal Entity

**Document ID:** LOS-DAT-ENT-004

**Status:** Draft

**Owner:** Data Team

---

# Purpose

The Goal entity represents a measurable objective managed by Life OS.

It serves as the canonical source for long-term planning, progress tracking, and achievement management.

---

# Responsibilities

- Store goal definition.
- Store progress state.
- Track milestones.
- Support reporting.
- Support analytics.

---

# Attributes

| Name | Type | Required |
|------|------|----------|
| id | UUID | Yes |
| userId | UUID | Yes |
| title | String | Yes |
| description | String | No |
| category | String | Yes |
| targetValue | Decimal | No |
| currentValue | Decimal | No |
| unit | String | No |
| status | Enum | Yes |
| dueAt | Timestamp | No |
| completedAt | Timestamp | No |
| createdAt | Timestamp | Yes |
| updatedAt | Timestamp | Yes |
| archivedAt | Timestamp | No |

---

# Relationships

- Belongs to User
- Owns Tasks
- Produces Goal Events
- Produces Statistics

---

# Constraints

- Identifier is immutable.
- Title is required.
- Archived goals are read-only.

---

# Validation Rules

- Required fields cannot be empty.
- Target value must be positive.
- Current value cannot exceed target unless explicitly allowed.
- Status transitions must follow lifecycle.

---

# Lifecycle

Created

↓

Active

↓

Completed

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
