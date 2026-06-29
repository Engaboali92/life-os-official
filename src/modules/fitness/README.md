# Fitness Module Implementation

## Owner

Modules Team

## Purpose

Implement workout planning, exercise tracking, training sessions, recovery, body measurements, and fitness-related domain events.

The Fitness Module owns fitness business behavior only and must not contain persistence implementation, interface logic, or infrastructure behavior.

## Allowed Files

- src/modules/fitness
- tests/unit/modules/fitness

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Fitness commands from Application Layer
- Workout sessions
- Exercise records
- Body measurements
- User context
- Kernel services

## Outputs

- Fitness domain result
- Workout statistics
- Validation errors
- Fitness domain events

## Required Behavior

- Create workout
- Update workout
- Record exercise
- Record body measurement
- Record recovery
- Calculate workout statistics
- Produce fitness events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/modules/fitness/fitness-module.md
- specifications/data/entities/fitness-entity.md

## Tests Required

- Workout creation
- Exercise recording
- Measurement recording
- Recovery recording
- Statistics calculation
- Event production

## Acceptance Criteria

- Fitness rules implemented
- Unit tests pass
- No infrastructure dependency
- No persistence implementation
- No placeholders
