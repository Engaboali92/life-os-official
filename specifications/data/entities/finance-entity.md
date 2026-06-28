# Finance Entity

**Document ID:** LOS-DAT-ENT-007

**Status:** Draft

**Owner:** Data Team

---

# Purpose

The Finance Entity represents all financial records managed by Life OS.

---

# Responsibilities

- Store financial transactions.
- Support budgeting.
- Support reporting.
- Support analytics.

---

# Attributes

| Name | Type | Required |
|------|------|----------|
| id | UUID | Yes |
| userId | UUID | Yes |
| type | Enum | Yes |
| category | String | Yes |
| amount | Decimal | Yes |
| currency | String | Yes |
| description | String | No |
| occurredAt | Timestamp | Yes |
| createdAt | Timestamp | Yes |
| updatedAt | Timestamp | Yes |
| archivedAt | Timestamp | No |

---

# Relationships

- Belongs to User
- Produces Financial Reports
- Produces Financial Statistics

---

# Constraints

- Identifier immutable.
- Amount must be positive.
- Currency required.

---

# Validation Rules

- Required fields cannot be empty.
- Amount greater than zero.
- Currency supported.

---

# Lifecycle

Created

↓

Active

↓

Archived

---

# Security

- Accessible only by owner.
- Audit logging mandatory.

---

# Acceptance Criteria

- Attributes documented.
- Relationships documented.
- Validation documented.
- Constraints documented.
