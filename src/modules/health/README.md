# Health Module Implementation

## Owner

Modules Team

## Purpose

Implement health records, measurements, medication tracking, supplement tracking, health state validation, and health-related domain events.

The Health Module owns health business behavior only and must not contain persistence implementation, interface logic, or infrastructure behavior.

## Allowed Files

- src/modules/health
- tests/unit/modules/health

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Health commands from Application Layer
- Kernel services
- Data ports
- User context
- Health measurements
- Medication records
- Supplement records
- System timestamp

## Outputs

- Health domain result
- Health validation errors
- Health statistics
- Health domain events

## Required Behavior

- Create health record
- Update health record
- Archive health record
- Record measurement
- Track medication
- Track supplement
- Validate health record types
- Produce health events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/modules/health/health-module.md
- specifications/data/entities/health-entity.md

## Tests Required

- Health record creation
- Measurement validation
- Medication tracking
- Supplement tracking
- Archived record protection
- Event production

## Acceptance Criteria

- Health business rules implemented
- Unit tests pass
- No infrastructure dependency
- No direct module-to-module calls
- No persistence implementation
- No placeholders
