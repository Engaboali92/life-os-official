# WI-CM-001: Command Foundation

Owner: Command Team

Status: Ready

Objective

Implement the base command abstraction used by all write operations.

Inputs

- specifications/layers/command-layer.md
- specifications/apis/commands/command-api.md

Allowed Files

- src/command/dto
- tests/unit/command

Forbidden Files

- src/modules
- src/data
- src/interface
- src/infrastructure

Required Outputs

- Base Command
- Command Metadata
- Command Result
- Unit tests

Acceptance

- Framework independent
- Immutable
- Tests pass
