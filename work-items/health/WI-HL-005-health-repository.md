# WI-HL-005: Health Repository

Owner: Data Team

Status: Ready

Depends On

- WI-HL-001
- WI-DA-004

Objective

Implement Health persistence abstraction.

Allowed Files

- src/data/repositories/health
- src/data/entities/health
- src/data/dto/health
- src/data/mappers/health
- tests/unit/data/health
- tests/integration/kernel-data

Required Outputs

- HealthRepository
- Health persistence model
- Health mapper
- In-memory implementation
- Tests

Acceptance Criteria

- Repository contains no business logic.
- User ownership is enforced.
- Archive behavior is supported.
- Tests pass.
