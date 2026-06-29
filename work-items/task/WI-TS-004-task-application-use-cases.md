# WI-TS-004: Task Application Use Cases

**Owner:** Application Team  
**Area:** src/application/use-cases/task  
**Status:** Ready

---

# Objective

Implement Task application use cases.

---

# Depends On

- WI-TS-001
- WI-TS-002
- WI-TS-003

---

# Inputs

- contracts/interfaces/command-application-contract.md
- contracts/interfaces/application-module-contract.md
- specifications/workflows/task/complete-task-workflow.md

---

# Allowed Files

- src/application/use-cases/task
- tests/unit/application/task
- tests/integration/application-modules/task

---

# Required Outputs

- CreateTaskUseCase
- UpdateTaskUseCase
- DeleteTaskUseCase
- CompleteTaskUseCase
- GetTaskUseCase
- ListTasksUseCase
- GetTaskStatisticsUseCase
- Tests

---

# Acceptance Criteria

- Use cases coordinate only.
- No business rules duplicated.
- No infrastructure access.
- Unit and integration tests pass.
