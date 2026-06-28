# Task Entity

**Document ID:** LOS-DAT-ENT-003

**Status:** Draft

**Owner:** Data Team

---

# Purpose

The Task entity represents a unit of work managed by Life OS.

It is the canonical source for task lifecycle, scheduling, execution status, and reporting.

---

# Responsibilities

- Store task definition.
- Store scheduling information.
- Track execution state.
- Support productivity metrics.
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
| priority | Enum | Yes |
| status | Enum | Yes |
| dueAt | Timestamp | No |
| completedAt | Timestamp | No |
| createdAt | Timestamp | Yes |
| updatedAt | Timestamp | Yes |
| archivedAt | Timestamp | No |

---

# Relationships

- Belongs to User
- May belong to Goal
- Produces Task Events
- Produces Statistics

---

# Constraints

- Identifier is immutable.
- Title is required.
- Archived tasks are read-only.

---

# Validation Rules

- Required fields cannot be empty.
- Priority must be supported.
- Status transitions must follow lifecycle.
- Completion timestamp exists only for completed tasks.

---

# Lifecycle

Created

↓

Scheduled

↓

In Progress

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
