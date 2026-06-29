# Automation Implementation

## Owner

Automation Team

## Purpose

Implement schedulers, jobs, retries, and workflow orchestration.

Automation coordinates scheduled execution without containing business rules.

## Allowed Files

- src/automation
- tests/unit/automation
- tests/integration/automation-integration

## Must Not Touch

- src/modules
- src/data
- src/interface
- src/infrastructure

## Inputs

- Schedules
- Events
- Triggers
- Application services

## Outputs

- Job execution
- Workflow execution
- Retry execution
- Scheduling metadata

## Required Behavior

- Execute scheduled jobs
- Coordinate workflows
- Retry failed operations
- Publish execution results
- Never implement business rules

## Contracts

- contracts/interfaces/automation-application-contract.md
- contracts/interfaces/automation-integration-contract.md
- specifications/automation/automation-overview.md
- specifications/layers/automation-layer.md

## Tests Required

- Scheduler tests
- Job tests
- Retry tests
- Workflow tests
- Integration tests

## Acceptance Criteria

- No business logic
- Deterministic scheduling
- Retry policy respected
- Unit tests pass
- Integration tests pass
