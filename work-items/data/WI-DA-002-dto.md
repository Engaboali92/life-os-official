# WI-DA-002: Data DTOs

Owner: Data Team

Status: Ready

Objective

Implement Data Transfer Objects used by Data Layer boundaries.

Inputs

- specifications/data/dto/dto-specification.md
- specifications/apis/api-overview.md

Allowed Files

- src/data/dto
- tests/unit/data

Forbidden Files

- src/modules
- src/application
- src/command
- src/interface
- src/infrastructure

Required Outputs

- Persistence DTOs
- Query DTOs
- Repository response DTOs
- Event storage DTOs
- Serialization tests

Acceptance Criteria

- DTOs contain data only.
- DTOs contain no business logic.
- DTOs follow serialization rules.
- Unknown fields are rejected where validation applies.
- Unit tests pass.
