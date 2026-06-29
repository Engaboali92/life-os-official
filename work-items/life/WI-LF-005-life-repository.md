# WI-LF-005: Life Repository

Owner: Data Team

Status: Ready

Depends On

- WI-LF-001
- WI-DA-004

Objective

Implement Life persistence abstraction.

Allowed Files

- src/data/repositories/life
- src/data/entities/life
- src/data/dto/life
- src/data/mappers/life
- tests/unit/data/life
- tests/integration/kernel-data

Required Outputs

- LifeRepository
- StrategicPlan persistence model
- Life mapper
- In-memory implementation
- Tests

Acceptance Criteria

- Repository contains no business logic.
- User ownership is enforced.
- Archive behavior is supported.
- Tests pass.
