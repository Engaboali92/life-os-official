# WI-TS-003: Task Domain Events

Owner: Modules Team

Area: src/modules/task

Status: Ready

Objective

Implement Task domain events.

Depends On

- WI-TS-001
- WI-TS-002

Inputs

- specifications/events/event-contract.md
- specifications/events/event-naming.md
- specifications/events/module/module-events.md

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

- task-created event
- task-updated event
- task-completed event
- task-reopened event
- task-archived event
- Event tests

Acceptance Criteria

- Events follow Event Contract.
- Events use approved naming.
- Events are immutable.
- Events contain required metadata.
- Unit tests pass.
