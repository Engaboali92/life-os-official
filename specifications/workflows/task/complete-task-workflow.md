# Complete Task Workflow

**Document ID:** LOS-WFL-TSK-002

**Status:** Draft

**Owner:** Automation Team

---

# Purpose

The Complete Task Workflow marks a task as completed, updates progress, recalculates related statistics, and publishes the corresponding domain events.

---

# Trigger

User requests task completion.

---

# Preconditions

- User authenticated.
- Task exists.
- Task is active.
- Task is not already completed.

---

# Inputs

- User context
- Task identifier
- Completion timestamp

---

# Workflow Steps

1. Receive completion request.
2. Validate authentication.
3. Validate task state.
4. Verify task ownership.
5. Mark task as completed.
6. Update related goal progress if applicable.
7. Recalculate statistics.
8. Publish task-completed event.
9. Persist changes.
10. Return success response.

---

# Decision Points

- Task already completed.
- Task archived.
- Unauthorized request.

---

# Outputs

- Updated task
- Updated statistics
- Updated goal progress
- Domain events
- Execution summary

---

# Produced Events

- task-completed
- goal-progress-updated
- task-statistics-updated

---

# External Integrations

None

---

# Error Handling

- Reject duplicate completion.
- Reject unauthorized access.
- Roll back persistence failures.

---

# Retry Strategy

- Retry transient persistence failures only.

---

# Performance Requirements

- Complete under 200 ms excluding persistence.

---

# Security

- Authentication required.
- Authorization enforced.
- Audit logging mandatory.

---

# Acceptance Criteria

- Trigger documented.
- Workflow documented.
- Outputs documented.
- Events documented.
- Errors documented.
