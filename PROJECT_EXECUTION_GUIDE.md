# Life OS Project Execution Guide

**Document ID:** LOS-EXE-001

**Status:** Active

**Owner:** Architecture Team

---

# Purpose

This guide defines how Life OS must be implemented after the architecture freeze.

It exists to allow any future team to continue the project without relying on undocumented knowledge from the original team.

---

# Project Philosophy

Life OS is built as a modular personal operating system.

The project must prioritize:

- Clear boundaries
- Explicit contracts
- Replaceable components
- Testable units
- Incremental delivery
- Long-term maintainability

---

# Source of Truth

The official source of truth is the documentation inside:

- architecture/
- contracts/
- specifications/
- governance/
- implementation/

If implementation conflicts with documentation, the documentation wins until it is formally updated.

---

# Architecture Freeze

The architecture freeze tag is:

`v10.0-architecture-freeze`

After this tag:

- Architecture changes require explicit justification.
- Interface contract changes require review.
- Breaking changes require a new decision record.
- Implementation must follow the frozen contracts unless a documented change is approved.

---

# Implementation Strategy

Implementation must proceed through vertical slices.

A vertical slice means delivering one working capability across all required layers.

Example:

Habit Slice:

1. Shared primitives
2. Kernel support
3. Data entity
4. Repository
5. Module logic
6. Application use case
7. Command handler
8. API endpoint
9. Unit tests
10. Integration tests
11. System test

---

# Recommended Build Order

The recommended execution order is:

1. Shared primitives
2. Kernel core
3. Data infrastructure
4. Habit vertical slice
5. Task vertical slice
6. Goal vertical slice
7. Reporting
8. Automation
9. Integration
10. Interface
11. Infrastructure deployment

---

# Layer Rules

## Interface Layer

- Owns user-facing adapters.
- Does not contain business logic.
- Calls Command or Query APIs only.

## Command Layer

- Owns state-changing command handling.
- Validates command structure.
- Calls Application Layer.
- Does not access Data Layer directly.

## Application Layer

- Coordinates workflows.
- Applies cross-module orchestration.
- Calls Modules and Services.
- Does not contain infrastructure code.

## Module Layer

- Owns business rules.
- Owns domain behavior.
- Produces domain events.
- Does not call other modules directly.

## Kernel Layer

- Owns shared domain services.
- Provides cross-cutting business utilities.
- Does not contain module-specific business rules.

## Data Layer

- Owns persistence abstractions.
- Owns repositories, schemas, migrations, DTOs, and mappers.
- Does not contain business rules.

## Automation Layer

- Owns scheduled and event-driven execution.
- Must be idempotent.
- Must support retry handling.

## Integration Layer

- Owns external system communication.
- Must isolate providers from business logic.

## Infrastructure Layer

- Owns runtime configuration, deployment, logging, monitoring, database, and security infrastructure.
- Must not contain business rules.

---

# Dependency Rules

Allowed direction:

Interface -> Command -> Application -> Modules -> Kernel

Application -> Services

Modules -> Kernel

Modules -> Data through approved ports

Application -> Data through approved services only when documented

Automation -> Application

Integration -> Application

Infrastructure supports all layers but must not be imported by business layers directly.

Forbidden:

- Module directly calling another module
- Module directly calling external integrations
- Interface directly accessing Data Layer
- Infrastructure leaking into business rules
- Data Layer owning business decisions

---

# Coding Standards

## Naming

- Files use kebab-case.
- Classes use PascalCase.
- Functions use camelCase.
- Constants use UPPER_SNAKE_CASE.
- Interfaces begin with descriptive domain names, not generic names.

## File Rules

- One primary responsibility per file.
- No mixed layer responsibilities.
- No unused files.
- No placeholder files except `.gitkeep`.
- No `TODO`, `TBD`, or `To be defined`.

## Error Handling

- Use structured errors.
- Never throw raw strings.
- Errors must include code, message, and context when useful.
- Business errors are different from system errors.

## Logging

- Log important state transitions.
- Do not log sensitive data.
- Use structured logs.
- Include correlation identifiers when available.

## Validation

- Validate input at boundaries.
- Validate business rules inside modules.
- Validate persistence constraints inside data layer.
- Never trust external payloads.

---

# Testing Rules

Testing must start with the first implementation commit.

Required test levels:

- Unit tests
- Integration tests
- System tests
- Regression tests

## Unit Tests

Must cover:

- Domain rules
- Services
- Value objects
- Command validation
- Error cases

## Integration Tests

Must cover:

- Application to Module interaction
- Module to Data interaction
- Automation to Application interaction
- Integration boundaries

## System Tests

Must cover:

- End-to-end user flows
- Complete vertical slices
- Failure scenarios

## Regression Tests

Must cover:

- Previously fixed bugs
- Contract-breaking risks
- Architecture rule violations

---

# Definition of Done

A feature, module, service, or slice is considered done only when:

- Implementation follows documented contracts.
- Unit tests pass.
- Integration tests pass.
- System tests pass when applicable.
- No placeholders remain.
- No undocumented shortcuts exist.
- Errors are structured.
- Logs are meaningful.
- Documentation is updated when behavior changes.
- Git commit is clean.
- Tag is created for milestone-level changes.

---

# Breaking Change Definition

A change is breaking when it:

- Changes a public contract.
- Removes a documented field.
- Renames an API operation.
- Changes event payload meaning.
- Changes persistence schema incompatibly.
- Changes dependency direction.
- Violates architecture rules.

Breaking changes require:

- Decision log entry.
- Contract update.
- Migration plan when data is affected.
- New milestone tag.

---

# Git Rules

- One logical change per commit.
- Commit messages must be clear.
- Tags mark stable milestones.
- Do not rewrite published history.
- Do not commit generated noise.
- Do not commit secrets.

---

# Tagging Rules

Use tags for:

- Architecture milestones
- Completed slices
- Completed modules
- Completed infrastructure milestones
- Major documentation updates
- Stable test-passing checkpoints

Example tags:

- v11.0-implementation-skeleton
- v12.0-habit-slice
- v13.0-task-slice
- v14.0-goal-slice

---

# Review Rules

Before merging or tagging:

- Run tests.
- Check architecture boundaries.
- Check for placeholders.
- Check formatting.
- Check documentation impact.
- Check security impact.

---

# Security Rules

- No secrets in repository.
- Environment variables for sensitive configuration.
- User data must be isolated by ownership.
- Authorization required for all user data access.
- Audit logging required for write operations.
- External payloads must be verified.

---

# Performance Rules

- Queries must support pagination.
- Long-running jobs must be asynchronous.
- Batch processing required for large operations.
- Avoid unnecessary cross-layer calls.
- Avoid loading full datasets when filters can be applied.

---

# Documentation Update Rules

Documentation must be updated when:

- Contract changes.
- API changes.
- Event changes.
- Workflow changes.
- Data model changes.
- Architecture rule changes.
- Implementation reveals a necessary design correction.

---

# Handoff Rules

A new team should start by reading:

1. README.md
2. PROJECT_EXECUTION_GUIDE.md
3. architecture/system-overview.md
4. architecture/layer-map.md
5. contracts/interfaces
6. specifications/layers
7. implementation/phase-01-skeleton.md

Then the team should begin implementation from:

`src/shared`

then:

`src/kernel`

then:

`Habit vertical slice`

---

# Final Rule

Do not optimize for speed at the expense of architecture integrity.

Life OS is intended to survive long-term evolution, replacement of components, and team handoff.
