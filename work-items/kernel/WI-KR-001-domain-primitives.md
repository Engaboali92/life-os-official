# WI-KR-001: Domain Primitives

Owner: Kernel Team

Status: Ready

Objective

Implement the fundamental immutable primitives used across the entire domain model.

Inputs

- Kernel Layer Specification
- Design Philosophy
- Module Contracts

Allowed Files

- src/kernel/domain
- tests/unit/kernel

Forbidden Files

- src/data
- src/modules
- src/application
- src/interface
- src/infrastructure

Outputs

- Base DomainObject
- Aggregate Root
- Entity Base
- Immutable primitives

Acceptance

- Immutable
- Framework independent
- Unit tests pass
