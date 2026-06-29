# WI-HB-004: Habit Application Use Cases

**Owner:** Application Team  
**Area:** src/application/use-cases/habit  
**Status:** Ready

---

# Objective

Implement Habit application use cases.

---

# Depends On

- WI-HB-001
- WI-HB-002
- WI-HB-003

---

# Inputs

- contracts/interfaces/command-application-contract.md
- contracts/interfaces/application-module-contract.md
- specifications/workflows/habit/complete-habit-workflow.md

---

# Allowed Files

- src/application/use-cases/habit
- tests/unit/application/habit
- tests/integration/application-modules/habit

---

# Required Outputs

- CreateHabitUseCase
- UpdateHabitUseCase
- DeleteHabitUseCase
- CompleteHabitUseCase
- GetHabitUseCase
- ListHabitsUseCase
- GetHabitStatisticsUseCase
- Tests

---

# Acceptance Criteria

- Use cases coordinate only.
- No business rules duplicated.
- No infrastructure access.
- Unit and integration tests pass.
