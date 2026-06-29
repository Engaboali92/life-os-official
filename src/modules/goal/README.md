# Goal Module Implementation

## Owner

Modules Team

## Purpose

Implement Goal business rules, progress tracking, milestone management, completion evaluation, and goal-related domain events.

The Goal Module owns goal behavior only and must remain independent from application orchestration, persistence implementation, interfaces, and infrastructure.

## Allowed Files

- src/modules/goal
- tests/unit/modules/goal

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Goal commands from Application Layer
- Kernel services
- Data ports
- User context
- Progress updates
- System timestamp

## Outputs

- Goal domain result
- Goal validation errors
- Goal progress
- Goal domain events

## Required Behavior

- Create goal
- Update goal
- Archive goal
- Track progress
- Complete goal
- Recalculate completion percentage
- Validate milestones
- Produce goal events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/data/entities/goal-entity.md
- specifications/services/goal/goal-service.md
- specifications/workflows/goal/update-goal-progress-workflow.md

## Tests Required

- Goal creation
- Goal update
- Progress calculation
- Completion evaluation
- Archived goal protection
- Event production

## Acceptance Criteria

- Business rules implemented
- Unit tests pass
- No infrastructure dependency
- No direct module-to-module calls
- No persistence implementation
- No placeholders
