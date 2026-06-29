# Habit Use Cases

## Owner

Application Team

## Purpose

Coordinate Habit application workflows between Command Layer, Habit Module, Kernel, and Data ports.

## Allowed Files

- src/application/use-cases/habit
- tests/unit/application/habit
- tests/integration/application-modules/habit

## Must Not Touch

- src/modules/task
- src/modules/goal
- src/infrastructure

## Inputs

- Validated command DTOs
- User context
- Application request metadata

## Outputs

- Application response DTOs
- Domain events
- Use case execution results

## Required Use Cases

- CreateHabitUseCase
- UpdateHabitUseCase
- DeleteHabitUseCase
- CompleteHabitUseCase
- GetHabitUseCase
- ListHabitsUseCase
- GetHabitStatisticsUseCase

## Contracts

- contracts/interfaces/command-application-contract.md
- contracts/interfaces/application-module-contract.md
- specifications/workflows/habit/complete-habit-workflow.md
- specifications/services/habit/habit-service.md

## Tests Required

- Use case success paths
- Validation failure paths
- Module interaction
- Data persistence interaction
- Event output verification

## Acceptance Criteria

- Use cases coordinate only
- No business rules duplicated
- No direct infrastructure access
- Tests pass
