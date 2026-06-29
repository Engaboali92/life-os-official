# WI-HL-003: Health Domain Events

Owner: Modules Team

Status: Ready

Depends On

- WI-HL-001
- WI-HL-002

Objective

Implement Health domain events.

Inputs

- specifications/events/event-contract.md
- specifications/events/event-naming.md
- specifications/events/module/module-events.md

Required Outputs

- health-record-created event
- health-record-updated event
- health-measurement-recorded event
- medication-recorded event
- supplement-recorded event
- health-record-archived event
- Event tests

Acceptance Criteria

- Events follow Event Contract.
- Events are immutable.
- Events use approved naming.
- Unit tests pass.
