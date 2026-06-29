# WI-TS-002: Task Business Rules

Owner: Modules Team

Area: src/modules/task

Status: Ready

Objective

Implement Task business rules and lifecycle transitions.

Depends On

- WI-TS-001

Inputs

- specifications/services/task/task-service.md
- specifications/workflows/task/create-task-workflow.md
- specifications/workflows/task/complete-task-workflow.md

Allowed Files

- src/modules/task
- tests/unit/modules/task

Forbidden Files

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

Required Outputs

- Task creation validation
- Task update validation
- Task completion validation
- Task reopening validation
- Archived task protection
- Invalid transition protection
- Unit tests

Acceptance Criteria

- Completed tasks cannot be completed again.
- Archived tasks cannot be modified.
- Invalid status transitions fail with structured errors.
- Due date validation is enforced.
- Unit tests pass.
