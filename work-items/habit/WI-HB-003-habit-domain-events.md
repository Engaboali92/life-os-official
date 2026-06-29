# WI-HB-003: Habit Domain Events

**Owner:** Modules Team  
**Area:** src/modules/habit  
**Status:** Ready

---

# Objective

Implement Habit domain events.

---

# Depends On

- WI-HB-001
- WI-HB-002

---

# Inputs

- specifications/events/event-contract.md
- specifications/events/event-naming.md
- specifications/events/module/module-events.md

---

# Allowed Files

- src/modules/habit
- tests/unit/modules/habit

---

# Required Outputs

- habit-created event
- habit-updated event
- habit-completed event
- habit-archived event
- Event tests

---

# Acceptance Criteria

- Events follow Event Contract.
- Events use approved naming.
- Events are immutable.
- Unit tests pass.
