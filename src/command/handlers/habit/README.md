# Habit Command Handlers

## Owner

Command Team

## Purpose

Handle Habit state-changing commands and route them to Application Use Cases.

## Allowed Files

- src/command/handlers/habit
- src/command/validators/habit
- src/command/dto/habit
- tests/unit/command/habit

## Must Not Touch

- src/modules
- src/data
- src/infrastructure

## Inputs

- CreateHabitCommand
- UpdateHabitCommand
- DeleteHabitCommand
- CompleteHabitCommand

## Outputs

- Command execution result
- Validation errors
- Application response

## Contracts

- contracts/interfaces/command-application-contract.md
- specifications/apis/commands/command-api.md

## Tests Required

- Valid command routing
- Invalid command rejection
- Application error propagation
- Authorization metadata passing

## Acceptance Criteria

- No business logic
- No persistence access
- Commands are validated before execution
- Tests pass
