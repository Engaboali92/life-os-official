# Learning Module Implementation

## Owner

Modules Team

## Purpose

Implement learning plans, courses, lessons, study sessions, reviews, knowledge retention, and learning-related domain events.

The Learning Module owns learning business behavior only and must not contain persistence implementation, interface logic, or infrastructure behavior.

## Allowed Files

- src/modules/learning
- tests/unit/modules/learning

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Learning commands from Application Layer
- Study sessions
- Lesson progress
- Review sessions
- User context
- Kernel services

## Outputs

- Learning domain result
- Learning statistics
- Validation errors
- Learning domain events

## Required Behavior

- Create learning plan
- Update learning plan
- Record study session
- Complete lesson
- Complete course
- Calculate learning progress
- Produce learning events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/modules/learning/learning-module.md
- specifications/data/entities/learning-entity.md

## Tests Required

- Learning plan creation
- Lesson completion
- Study session recording
- Course completion
- Statistics calculation
- Event production

## Acceptance Criteria

- Learning rules implemented
- Unit tests pass
- No infrastructure dependency
- No persistence implementation
- No placeholders
