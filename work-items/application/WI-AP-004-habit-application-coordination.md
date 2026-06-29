# WI-AP-004: Habit Application Coordination

Owner: Application Team

Status: Ready

Objective

Implement application coordination for the Habit vertical slice.

Depends On

- WI-AP-001
- WI-AP-002
- WI-AP-003
- WI-HB-001
- WI-HB-002
- WI-HB-003
- WI-HB-005

Inputs

- specifications/services/habit/habit-service.md
- specifications/workflows/habit/complete-habit-workflow.md
- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-data-contract.md

Allowed Files

- src/application/use-cases/habit
- src/application/services/habit
- tests/unit/application/habit
- tests/integration/application-modules/habit

Forbidden Files

- src/modules/task
- src/modules/goal
- src/data/repositories/task
- src/interface
- src/infrastructure

Required Outputs

- CreateHabitUseCase
- UpdateHabitUseCase
- DeleteHabitUseCase
- CompleteHabitUseCase
- GetHabitUseCase
- ListHabitsUseCase
- GetHabitStatisticsUseCase
- Unit and integration tests

Acceptance Criteria

- Use cases call Habit Module through documented boundary.
- Data access occurs only through approved ports or repositories.
- No Habit business rule is duplicated.
- Errors are mapped to application responses.
- Tests pass.
