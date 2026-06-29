# Data Implementation

## Owner

Data Team

## Purpose

Implement persistence abstractions, data entities, DTOs, mappers, schemas, migrations, and repositories for Life OS.

The Data Layer supports storage and retrieval while remaining free from business rules.

## Allowed Files

- src/data
- tests/unit/data
- tests/integration/kernel-data

## Must Not Touch

- src/modules
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Domain entities
- Repository contracts
- DTO specifications
- Schema specifications
- Migration strategy
- User ownership rules

## Outputs

- Data entities
- Repository interfaces
- Repository implementations
- DTOs
- Mappers
- Schemas
- Migrations
- Persistence errors

## Required Behavior

- Persist entities safely
- Retrieve entities consistently
- Enforce ownership boundaries
- Support pagination
- Support archiving
- Preserve data integrity

## Contracts

- contracts/interfaces/module-data-contract.md
- contracts/interfaces/kernel-data-contract.md
- specifications/data/repositories/repository-specification.md
- specifications/data/entities
- specifications/data/dto/dto-specification.md
- specifications/data/migrations/migration-strategy.md
- specifications/data/schemas/schema-map.md

## Tests Required

- Entity tests
- DTO tests
- Mapper tests
- Repository tests
- Migration tests
- Integration tests with Kernel ports

## Acceptance Criteria

- No business logic
- Repository contracts respected
- Ownership enforced
- Archive behavior supported
- Unit tests pass
- Integration tests pass
- No placeholders
