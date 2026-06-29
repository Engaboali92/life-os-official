# WI-TS-002: Task Business Rules

**Owner:** Modules Team  
**Area:** src/modules/task  
**Status:** Ready

---

# Objective

Implement Task business rules and state transitions.

---

# Depends On

- WI-TS-001

---

# Allowed Files

- src/modules/task
- tests/unit/modules/task

---

# Required Outputs

- Task creation validation
- Task update validation
- Task completion validation
- Duplicate completion prevention
- Archived task protection
- State transition rules
- Unit tests

---

# Acceptance Criteria

- Completed tasks cannot be duplicated in the same occurrence.
- Archived tasks cannot be modified.
- Invalid transitions fail with structured errors.
- Unit tests pass.
