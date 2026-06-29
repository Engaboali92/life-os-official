# WI-LF-004: Life Application Use Cases

Owner: Application Team

Status: Ready

Depends On

- WI-LF-001
- WI-LF-002
- WI-LF-003
- WI-AP-001
- WI-AP-002

Objective

Implement Life application coordination.

Allowed Files

- src/application/use-cases/life
- src/application/services/life
- tests/unit/application/life
- tests/integration/application-modules/life

Required Outputs

- CreateLifeGoalUseCase
- UpdateLifeGoalUseCase
- CompleteLifeGoalUseCase
- UpdatePriorityUseCase
- RecordMilestoneUseCase
- CompleteReviewUseCase
- GetLifeDashboardUseCase
- Tests

Acceptance Criteria

- Use cases coordinate only.
- No strategic rules are duplicated.
- Errors are mapped to application responses.
- Tests pass.
