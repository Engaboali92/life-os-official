# WI-TS-007: Task API

Owner: Interface Team

Area: src/interface

Status: Ready

Objective

Implement Task API endpoints and controllers.

Depends On

- WI-IF-001
- WI-IF-002
- WI-TS-004
- WI-TS-006

Inputs

- specifications/apis/modules/module-api.md
- specifications/apis/commands/command-api.md
- specifications/apis/queries/query-api.md
- contracts/interfaces/interface-command-contract.md

Allowed Files

- src/interface/api/task
- src/interface/controllers/task
- tests/unit/interface/task
- tests/system/end-to-end/task

Forbidden Files

- src/modules
- src/data
- src/application/use-cases/habit
- src/infrastructure

Required Outputs

- Create Task endpoint
- Update Task endpoint
- Complete Task endpoint
- Reopen Task endpoint
- Archive Task endpoint
- Get Task endpoint
- List Tasks endpoint
- Task Statistics endpoint
- Unit and system tests

Acceptance Criteria

- API follows documented contracts.
- No business logic exists.
- No direct data access exists.
- Error responses are structured.
- Tests pass.
