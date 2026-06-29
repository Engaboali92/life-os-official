# Worship Module Implementation

## Owner

Modules Team

## Purpose

Implement worship activities, prayers, Quran, adhkar, fasting, charity, Islamic goals, and worship-related domain events.

The Worship Module owns worship business behavior only and must not contain persistence implementation, interface logic, or infrastructure behavior.

## Allowed Files

- src/modules/worship
- tests/unit/modules/worship

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Worship commands from Application Layer
- User context
- Worship records
- Quran progress
- Prayer records
- Kernel services

## Outputs

- Worship domain result
- Worship statistics
- Validation errors
- Worship domain events

## Required Behavior

- Record prayer
- Record Quran session
- Record adhkar
- Record fasting
- Record charity
- Calculate worship statistics
- Produce worship events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/modules/worship/worship-module.md
- specifications/data/entities/worship-entity.md

## Tests Required

- Prayer recording
- Quran session recording
- Fasting recording
- Charity recording
- Statistics calculation
- Event production

## Acceptance Criteria

- Worship rules implemented
- Unit tests pass
- No infrastructure dependency
- No persistence implementation
