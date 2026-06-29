# Interface Implementation

## Owner

Interface Team

## Purpose

Implement external interfaces for Life OS including HTTP APIs, controllers, and web presentation.

The Interface Layer converts external requests into Commands or Queries and converts application results into transport responses.

## Allowed Files

- src/interface
- tests/unit/interface
- tests/system/end-to-end

## Must Not Touch

- src/modules
- src/data
- src/infrastructure

## Inputs

- HTTP requests
- Web requests
- Authenticated user context
- Query parameters
- Route parameters

## Outputs

- HTTP responses
- Error responses
- Command dispatch
- Query dispatch

## Required Behavior

- Validate transport models
- Map requests
- Map responses
- Never implement business rules
- Never access persistence directly

## Contracts

- contracts/interfaces/interface-command-contract.md
- specifications/apis
- specifications/interfaces/interface-overview.md

## Tests Required

- API tests
- Controller tests
- Response mapping tests
- End-to-end tests

## Acceptance Criteria

- No business logic
- No persistence access
- Unit tests pass
- System tests pass
