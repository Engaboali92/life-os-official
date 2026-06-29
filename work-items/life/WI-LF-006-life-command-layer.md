# WI-LF-006: Life Command Layer

Owner: Command Team

Status: Ready

Depends On

- WI-CM-001
- WI-CM-002
- WI-CM-003
- WI-LF-004

Objective

Implement Life command DTOs, validators, and handlers.

Allowed Files

- src/command/dto/life
- src/command/validators/life
- src/command/handlers/life
- tests/unit/command/life

Required Outputs

- CreateLifeGoalCommand
- UpdateLifeGoalCommand
- CompleteLifeGoalCommand
- UpdatePriorityCommand
- RecordMilestoneCommand
- CompleteReviewCommand
- Validators
- Handlers
- Tests

Acceptance Criteria

- Commands validate before execution.
- Commands route to Application Layer only.
- No Data Layer access.
- No business logic.
- Tests pass.
