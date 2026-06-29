# Application Implementation

## Owner

Application Team

## Purpose

Implement use cases, application services, orchestration logic, and response models for Life OS.

The Application Layer coordinates workflows between Command, Modules, Data ports, Kernel services, Automation, and Integration without owning business rules or infrastructure behavior.

## Allowed Files

- src/application
- tests/unit/application
- tests/integration/application-modules

## Must Not Touch

- src/modules internal business implementation
- src/data repository implementation
- src/interface
- src/infrastructure

## Inputs

- Validated command DTOs
- Query DTOs
- User context
- Module contracts
- Workflow specifications
- Service specifications
- Kernel services
- Data ports

## Outputs

- Use case results
- Application response DTOs
- Application errors
- Domain events propagated from modules
- Integration-ready execution summaries

## Required Behavior

- Coordinate use cases
- Call modules through approved contracts
- Use data through approved ports or documented services
- Avoid duplicating business rules
- Avoid direct infrastructure access
- Preserve cross-module boundaries

## Contracts

- contracts/interfaces/command-application-contract.md
- contracts/interfaces/application-module-contract.md
- contracts/interfaces/automation-application-contract.md
- specifications/layers/application-layer.md
- specifications/services
- specifications/workflows

## Tests Required

- Use case tests
- Application service tests
- Workflow coordination tests
- Error propagation tests
- Integration tests with Modules

## Acceptance Criteria

- No business rules duplicated
- No direct infrastructure access
- No direct external integration access
- Use cases coordinate only
- Unit tests pass
- Integration tests pass
- No placeholders
