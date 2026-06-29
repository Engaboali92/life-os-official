# WI-DA-005: Schemas

Owner: Data Team

Status: Ready

Objective

Implement schema definitions for persistent storage.

Depends On

- WI-DA-001

Inputs

- specifications/data/schemas/schema-map.md
- specifications/data/models/data-model.md

Allowed Files

- src/data/schemas
- tests/unit/data

Forbidden Files

- src/modules
- src/application
- src/command
- src/interface
- src/infrastructure

Required Outputs

- Core schema definitions
- Productivity schema definitions
- Module schema definitions
- Index definitions
- Ownership constraints
- Schema tests

Acceptance Criteria

- Schemas match schema map.
- UUID identifiers are supported.
- User ownership is represented.
- Archived records are supported.
- Tests pass.
