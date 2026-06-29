# Habit Module Implementation

## Owner

Modules Team

## Purpose

Implement Habit business rules, validation, state transitions, and domain events.

## Allowed Files

This team may write inside:

- src/modules/habit
- tests/unit/modules/habit

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Habit commands from Application Layer
- Kernel services
- Data ports
- User context
- System timestamp

## Outputs

- Habit domain result
- Habit validation errors
- Habit domain events

## Required Behavior

- Create habit
- Update habit
- Delete habit
- Complete habit
- Skip habit
- Calculate habit state
- Produce habit events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/modules/life/life-module.md
- specifications/services/habit/habit-service.md
- specifications/workflows/habit/complete-habit-workflow.md

## Tests Required

- Habit creation
- Habit completion
- Duplicate completion rejection
- Invalid habit rejection
- Archived habit protection
- Event production

## Acceptance Criteria

- Business rules implemented
- Unit tests pass
- No infrastructure dependency
- No direct module-to-module calls
- No placeholders
