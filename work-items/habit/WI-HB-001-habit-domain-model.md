# WI-HB-001: Habit Domain Model

**Owner:** Modules Team  
**Area:** src/modules/habit  
**Status:** Ready

---

# Objective

Implement the core Habit domain model.

---

# Inputs

- specifications/modules/life/life-module.md
- specifications/services/habit/habit-service.md
- specifications/data/entities/habit-entity.md
- DESIGN_PHILOSOPHY.md
- PROJECT_EXECUTION_GUIDE.md

---

# Allowed Files

- src/modules/habit
- tests/unit/modules/habit

---

# Forbidden Files

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

---

# Required Outputs

- Habit aggregate
- HabitId value object
- HabitStatus value object
- HabitFrequency value object
- HabitCompletion record or entity
- Habit domain errors
- Unit tests

---

# Acceptance Criteria

- Habit can be created with valid data.
- Invalid habit data is rejected.
- Habit identity is immutable.
- No infrastructure dependency exists.
- Unit tests pass.
