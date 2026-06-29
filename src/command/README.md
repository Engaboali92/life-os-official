# Command Implementation

## Owner

Command Team

## Purpose

Implement commands, handlers, validators, and command DTOs responsible for all write operations.

The Command Layer validates incoming requests and delegates execution to the Application Layer.

## Allowed Files

- src/command
- tests/unit/command

## Must Not Touch

- src/modules
- src/data
- src/interface
- src/infrastructure

## Inputs

- API requests
- Internal commands
- Scheduler commands
- Automation commands

## Outputs

- Validated commands
- Application requests
- Command execution results
- Validation failures

## Required Behavior

- Validate commands
- Reject invalid requests
- Dispatch commands
- Never execute business rules
- Never access persistence directly

## Contracts

- contracts/interfaces/command-application-contract.md
- specifications/apis/commands/command-api.md
- specifications/layers/command-layer.md

## Tests Required

- DTO tests
- Validator tests
- Handler tests
- Dispatch tests

## Acceptance Criteria

- No business logic
- No persistence access
- No infrastructure access
- Unit tests pass
