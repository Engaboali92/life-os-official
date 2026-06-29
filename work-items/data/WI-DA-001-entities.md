# WI-DA-001: Data Entities

Owner: Data Team

Status: Ready

Objective

Implement persistence entities used by Life OS.

Inputs

- specifications/data/entities
- specifications/data/models/data-model.md
- specifications/data/schemas/schema-map.md

Allowed Files

- src/data/entities
- tests/unit/data

Forbidden Files

- src/modules
- src/application
- src/command
- src/interface
- src/infrastructure

Required Outputs

- User persistence entity
- Habit persistence entity
- Task persistence entity
- Goal persistence entity
- Log persistence entity
- Event persistence entity
- Module-specific persistence entities where required
- Unit tests

Acceptance Criteria

- Entities match documented attributes.
- Entities enforce required fields.
- Entities contain no business logic.
- User ownership is represented.
- Unit tests pass.
