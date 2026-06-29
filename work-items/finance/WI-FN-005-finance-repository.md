# WI-FN-005: Finance Repository

Owner: Data Team

Status: Ready

Depends On

- WI-FN-001
- WI-DA-004

Objective

Implement Finance persistence abstraction.

Allowed Files

- src/data/repositories/finance
- src/data/entities/finance
- src/data/dto/finance
- src/data/mappers/finance
- tests/unit/data/finance
- tests/integration/kernel-data

Required Outputs

- FinanceRepository
- Finance persistence model
- Finance mapper
- In-memory implementation
- Tests

Acceptance Criteria

- Repository contains no business logic.
- User ownership is enforced.
- Archive behavior is supported.
- Tests pass.
