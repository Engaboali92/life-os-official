# Task Module Implementation

## Owner

Modules Team

## Purpose

Implement Task business rules, task lifecycle, assignment behavior, completion rules, and task-related domain events.

The Task Module owns task behavior only and must not contain application orchestration, persistence implementation, interface logic, or infrastructure behavior.

## Allowed Files

- src/modules/task
- tests/unit/modules/task

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Task commands from Application Layer
- Kernel services
- Data ports
- User context
- System timestamp

## Outputs

- Task domain result
- Task validation errors
- Task domain events
- Task state transitions

## Required Behavior

- Create task
- Update task
- Complete task
- Reopen task
- Archive task
- Validate due dates
- Validate task priority
- Validate task status transitions
- Produce task events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/data/entities/task-entity.md
- specifications/services/task/task-service.md
- specifications/workflows/task/create-task-workflow.md
- specifications/workflows/task/complete-task-workflow.md

## Tests Required

- Task creation
- Task update
- Task completion
- Task reopening
- Invalid status transition rejection
- Archived task protection
- Event production

## Acceptance Criteria

- Business rules implemented
- Unit tests pass
- No infrastructure dependency
- No direct module-to-module calls
- No persistence implementation
- No placeholders
