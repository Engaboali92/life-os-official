# Habit API

## Owner

Interface Team

## Purpose

Expose Habit HTTP/API endpoints and map external requests to commands and queries.

## Allowed Files

- src/interface/api/habit
- src/interface/controllers/habit
- tests/unit/interface/habit
- tests/system/end-to-end/habit

## Must Not Touch

- src/modules
- src/data
- src/infrastructure

## Inputs

- HTTP/API request
- Route parameters
- Request body
- Authenticated user context

## Outputs

- API response
- Error response
- Command or Query dispatch

## Required Endpoints

- Create Habit
- Update Habit
- Delete Habit
- Complete Habit
- Get Habit
- List Habits
- Get Habit Statistics

## Contracts

- specifications/apis/modules/module-api.md
- specifications/apis/commands/command-api.md
- specifications/apis/queries/query-api.md
- contracts/interfaces/interface-command-contract.md

## Tests Required

- Request mapping
- Response mapping
- Error mapping
- End-to-end habit flow

## Acceptance Criteria

- No business logic
- No direct data access
- API follows documented contract
- Tests pass
