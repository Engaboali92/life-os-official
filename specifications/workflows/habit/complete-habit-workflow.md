# Complete Habit Workflow

**Document ID:** LOS-WFL-HAB-001

**Status:** Draft

**Owner:** Automation Team

---

# Purpose

The Complete Habit Workflow records the successful completion of a habit and updates all related statistics, streaks, and domain events.

---

# Trigger

User requests habit completion.

---

# Preconditions

- User authenticated.
- Habit exists.
- Habit is active.
- Habit is not already completed for the current occurrence.

---

# Inputs

- User context
- Habit identifier
- Completion timestamp
- Optional completion value

---

# Workflow Steps

1. Receive completion request.
2. Validate user authorization.
3. Validate habit state.
4. Validate recurrence window.
5. Record completion.
6. Update streak.
7. Update statistics.
8. Publish habit-completed event.
9. Persist changes.
10. Return success response.

---

# Decision Points

- Habit already completed.
- Habit paused.
- Invalid completion window.

---

# Outputs

- Updated habit
- Updated streak
- Updated statistics
- Domain events
- Execution summary

---

# Produced Events

- habit-completed
- habit-statistics-updated
- habit-streak-updated

---

# External Integrations

None

---

# Error Handling

- Reject duplicate completion.
- Reject invalid requests.
- Roll back on persistence failure.

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
