# Update Goal Progress Workflow

**Document ID:** LOS-WFL-GOL-001

**Status:** Draft

**Owner:** Automation Team

---

# Purpose

The Update Goal Progress Workflow updates the progress of a goal, validates completion rules, recalculates statistics, and publishes the corresponding domain events.

---

# Trigger

- Task completed.
- Habit completed.
- Manual goal update.
- Automated progress calculation.

---

# Preconditions

- User authenticated.
- Goal exists.
- Goal is active.
- Progress update is valid.

---

# Inputs

- User context
- Goal identifier
- Progress value
- Update timestamp

---

# Workflow Steps

1. Receive progress update.
2. Validate authentication.
3. Validate goal state.
4. Verify ownership.
5. Validate progress value.
6. Update goal progress.
7. Determine completion state.
8. Update statistics.
9. Publish goal-progress-updated event.
10. Persist changes.
11. Return success response.

---

# Decision Points

- Goal already completed.
- Invalid progress value.
- Progress exceeds allowed limits.

---

# Outputs

- Updated goal
- Updated statistics
- Completion state
- Domain events
- Execution summary

---

# Produced Events

- goal-progress-updated
- goal-completed
- goal-statistics-updated

---

# External Integrations

None

---

# Error Handling

- Reject invalid progress.
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
