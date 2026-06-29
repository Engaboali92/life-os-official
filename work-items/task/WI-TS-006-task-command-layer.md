# WI-TS-006: Task Command Layer

**Owner:** Command Team  
**Area:** src/command  
**Status:** Ready

---

# Objective

Implement Task command DTOs, validators, and handlers.

---

# Depends On

- WI-TS-004

---

# Inputs

- specifications/apis/commands/command-api.md
- contracts/interfaces/command-application-contract.md

---

# Allowed Files

- src/command/dto/task
- src/command/validators/task
- src/command/handlers/task
- tests/unit/command/task

---

# Required Outputs

- CreateTaskCommand
- UpdateTaskCommand
- DeleteTaskCommand
- CompleteTaskCommand
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
