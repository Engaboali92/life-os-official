# Habit Repository Implementation

## Owner

Data Team

## Purpose

Implement persistence access for Habit records through repository abstractions.

## Allowed Files

- src/data/repositories/habit
- tests/unit/data/habit
- tests/integration/kernel-data

## Must Not Touch

- src/modules
- src/application
- src/interface

## Inputs

- Habit entity
- Query criteria
- User ownership context

## Outputs

- Persisted Habit entity
- Retrieved Habit entity
- Repository errors

## Required Operations

- create
- update
- findById
- findByUserId
- archive
- exists
- count

## Contracts

- contracts/interfaces/module-data-contract.md
- specifications/data/repositories/repository-specification.md
- specifications/data/entities/habit-entity.md

## Tests Required

- Create habit
- Find habit
- Update habit
- Archive habit
- User ownership enforcement
- Not found behavior

## Acceptance Criteria

- No business logic
- Repository contract respected
- Pagination supported where needed
- Tests pass
