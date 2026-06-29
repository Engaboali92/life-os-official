# WI-TS-004: Task Application Use Cases

Owner: Application Team

Area: src/application/use-cases/task

Status: Ready

Objective

Implement Task application use cases.

Depends On

- WI-TS-001
- WI-TS-002
- WI-TS-003
- WI-TS-005
- WI-AP-001
- WI-AP-002
- WI-AP-003

Inputs

- contracts/interfaces/command-application-contract.md
- contracts/interfaces/application-module-contract.md
- specifications/workflows/task/create-task-workflow.md
- specifications/workflows/task/complete-task-workflow.md
- specifications/services/task/task-service.md

Allowed Files

- src/application/use-cases/task
- src/application/services/task
- tests/unit/application/task
- tests/integration/application-modules/task

Forbidden Files

- src/modules/habit
- src/modules/goal
- src/data/repositories/habit
- src/interface
- src/infrastructure

Required Outputs

- CreateTaskUseCase
- UpdateTaskUseCase
- CompleteTaskUseCase
- ReopenTaskUseCase
- ArchiveTaskUseCase
- GetTaskUseCase
- ListTasksUseCase
- GetTaskStatisticsUseCase
- Unit and integration tests

Acceptance Criteria

- Use cases coordinate only.
- No Task business rules are duplicated.
- No infrastructure access exists.
- Errors are mapped to application responses.
- Unit and integration tests pass.
