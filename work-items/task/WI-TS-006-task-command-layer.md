# WI-TS-006: Task Command Layer

Owner: Command Team

Area: src/command

Status: Ready

Objective

Implement Task command DTOs, validators, and handlers.

Depends On

- WI-CM-001
- WI-CM-002
- WI-CM-003
- WI-TS-004

Inputs

- specifications/apis/commands/command-api.md
- contracts/interfaces/command-application-contract.md

Allowed Files

- src/command/dto/task
- src/command/validators/task
- src/command/handlers/task
- tests/unit/command/task

Forbidden Files

- src/modules
- src/data
- src/application/use-cases/habit
- src/interface
- src/infrastructure

Required Outputs

- CreateTaskCommand
- UpdateTaskCommand
- CompleteTaskCommand
- ReopenTaskCommand
- ArchiveTaskCommand
- Command validators
- Command handlers
- Unit tests

Acceptance Criteria

- Commands validate before execution.
- Commands route to Application Layer only.
- No Data Layer access.
- No business logic.
- Unit tests pass.
