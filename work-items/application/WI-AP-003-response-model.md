# WI-AP-003: Application Response Model

Owner: Application Team

Status: Ready

Objective

Implement standardized application response models for use cases and services.

Depends On

- WI-AP-001

Inputs

- specifications/apis/api-overview.md
- specifications/apis/commands/command-api.md
- specifications/apis/queries/query-api.md
- PROJECT_EXECUTION_GUIDE.md

Allowed Files

- src/application/dto
- src/application/services
- tests/unit/application

Forbidden Files

- src/modules
- src/data
- src/interface
- src/infrastructure

Required Outputs

- ApplicationSuccess response
- ApplicationFailure response
- ApplicationError model
- Pagination metadata model
- Execution metadata model
- Unit tests

Acceptance Criteria

- Response models are transport-independent.
- Errors are structured.
- Pagination metadata is supported.
- No business logic exists in response models.
- Unit tests pass.
