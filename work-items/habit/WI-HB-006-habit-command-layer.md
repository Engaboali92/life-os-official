# WI-HB-006: Habit Command Layer

**Owner:** Command Team  
**Area:** src/command  
**Status:** Ready

---

# Objective

Implement Habit command DTOs, validators, and handlers.

---

# Depends On

- WI-HB-004

---

# Inputs

- specifications/apis/commands/command-api.md
- contracts/interfaces/command-application-contract.md

---

# Allowed Files

- src/command/dto/habit
- src/command/validators/habit
- src/command/handlers/habit
- tests/unit/command/habit

---

# Required Outputs

- CreateHabitCommand
- UpdateHabitCommand
- DeleteHabitCommand
- CompleteHabitCommand
- Command validators
- Command handlers
- Unit tests

---

# Acceptance Criteria

- Commands validate before execution.
- Commands route to Application Layer only.
- No Data Layer access.
- No business logic.
- Tests pass.
