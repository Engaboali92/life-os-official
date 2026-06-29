# WI-AP-002: Application Service Layer

Owner: Application Team

Status: Ready

Objective

Implement application service abstractions used to coordinate modules, services, and workflows.

Depends On

- WI-AP-001

Inputs

- specifications/services
- specifications/workflows
- contracts/interfaces/application-module-contract.md
- contracts/interfaces/automation-application-contract.md

Allowed Files

- src/application/services
- src/application/dto
- tests/unit/application
- tests/integration/application-modules

Forbidden Files

- src/modules
- src/data
- src/interface
- src/infrastructure

Required Outputs

- Application service interface
- Service execution result model
- Service error propagation model
- Workflow coordination support
- Unit and integration tests

Acceptance Criteria

- Services coordinate only.
- No domain rules are duplicated.
- No infrastructure dependency exists.
- Integration with modules is contract-based.
- Tests pass.
