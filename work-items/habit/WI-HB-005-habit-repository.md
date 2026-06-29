# WI-HB-005: Habit Repository

**Owner:** Data Team  
**Area:** src/data/repositories/habit  
**Status:** Ready

---

# Objective

Implement Habit persistence abstraction.

---

# Depends On

- WI-HB-001

---

# Inputs

- contracts/interfaces/module-data-contract.md
- specifications/data/repositories/repository-specification.md
- specifications/data/entities/habit-entity.md

---

# Allowed Files

- src/data/repositories/habit
- src/data/entities/habit
- src/data/dto/habit
- src/data/mappers/habit
- tests/unit/data/habit
- tests/integration/kernel-data

---

# Required Outputs

- HabitRepository interface
- Habit persistence model
- Habit mapper
- In-memory implementation for tests
- Unit and integration tests

---

# Acceptance Criteria

- No business logic exists in repository.
- User ownership is enforced.
- Archive behavior supported.
- Pagination supported where needed.
- Tests pass.
