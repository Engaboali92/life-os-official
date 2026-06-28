# Module Events

**Document ID:** LOS-EVT-MOD-001

**Status:** Draft

**Owner:** Modules Team

---

# Purpose

The Module Events specification defines all domain events emitted by business modules inside Life OS.

---

# Event Categories

- Habit Events
- Task Events
- Goal Events
- Worship Events
- Health Events
- Fitness Events
- Learning Events
- Finance Events
- Family Events
- Work Events

---

# Standard Events

## Entity Created

### Trigger

A new business entity is successfully created.

### Payload

- entityId
- entityType
- userId
- createdAt

---

## Entity Updated

### Trigger

A business entity is modified.

### Payload

- entityId
- entityType
- userId
- updatedAt

---

## Entity Completed

### Trigger

A business process reaches completion.

### Payload

- entityId
- entityType
- completedAt

---

## Entity Archived

### Trigger

An entity is archived.

### Payload

- entityId
- entityType
- archivedAt

---

## Statistics Updated

### Trigger

Business statistics are recalculated.

### Payload

- module
- statisticsVersion
- calculatedAt

---

## Progress Updated

### Trigger

Progress value changes.

### Payload

- entityId
- previousValue
- currentValue
- updatedAt

---

# Event Rules

- Events follow the global Event Contract.
- Events are immutable.
- Payloads are versioned.
- Event identifiers are globally unique.

---

# Security

- Only owning modules may publish module events.
- Audit logging mandatory.

---

# Acceptance Criteria

The Module Events specification is complete only when:

- Events documented.
- Payloads documented.
- Rules documented.
- Security documented.
