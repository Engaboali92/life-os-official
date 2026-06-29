# WI-DA-003: Data Mappers

Owner: Data Team

Status: Ready

Objective

Implement mapping between domain models, persistence entities, and DTOs.

Depends On

- WI-DA-001
- WI-DA-002

Inputs

- specifications/data/models/data-model.md
- specifications/data/dto/dto-specification.md
- specifications/data/entities

Allowed Files

- src/data/mappers
- tests/unit/data

Forbidden Files

- src/modules
- src/application
- src/command
- src/interface
- src/infrastructure

Required Outputs

- Entity to DTO mappers
- DTO to entity mappers
- Persistence to domain mappers where allowed by ports
- Mapper error handling
- Unit tests

Acceptance Criteria

- Mappers do not contain business rules.
- Mapping failures are structured.
- Ownership fields are preserved.
- Unit tests pass.
