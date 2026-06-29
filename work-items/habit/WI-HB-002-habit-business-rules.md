# WI-HB-002: Habit Business Rules

**Owner:** Modules Team  
**Area:** src/modules/habit  
**Status:** Ready

---

# Objective

Implement Habit business rules and state transitions.

---

# Depends On

- WI-HB-001

---

# Allowed Files

- src/modules/habit
- tests/unit/modules/habit

---

# Required Outputs

- Habit creation validation
- Habit update validation
- Habit completion validation
- Duplicate completion prevention
- Archived habit protection
- State transition rules
- Unit tests

---

# Acceptance Criteria

- Completed habits cannot be duplicated in the same occurrence.
- Archived habits cannot be modified.
- Invalid transitions fail with structured errors.
- Unit tests pass.
