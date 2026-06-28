# Schema Map

**Document ID:** LOS-DAT-SCH-001

**Status:** Draft

**Owner:** Data Team

---

# Purpose

The Schema Map defines the logical organization of persistent schemas used by Life OS.

It establishes ownership boundaries, schema responsibilities, and relationships between persistent structures.

---

# Design Principles

- Domain-oriented organization.
- One owner per schema.
- Clear separation of concerns.
- Explicit relationships.
- Backward-compatible evolution.

---

# Schemas

## Core

- users
- logs
- events

---

## Productivity

- habits
- tasks
- goals

---

## Health

- health_records
- medications
- supplements

---

## Worship

- prayers
- quran_sessions
- adhkar
- fasting
- charity

---

## Learning

- courses
- study_sessions
- certifications

---

## Finance

- accounts
- budgets
- transactions

---

## Family

- family_members
- family_events

---

## Work

- projects
- meetings
- attendance

---

# Relationships

- Every business schema references users.
- Logs reference business entities.
- Events reference business entities.
- Cross-schema references are explicit and versioned.

---

# Constraints

- Primary keys use UUID.
- Foreign keys enforce ownership.
- Cascading deletes are prohibited.
- Historical data remains immutable.

---

# Indexing Strategy

- Primary keys indexed.
- Foreign keys indexed.
- Frequently queried timestamps indexed.
- Composite indexes documented per schema.

---

# Security

- Schema ownership enforced.
- Authorization required.
- Audit logging mandatory.

---

# Acceptance Criteria

The Schema Map is complete only when:

- Schemas documented.
- Relationships documented.
- Constraints documented.
- Index strategy documented.
- Security documented.
