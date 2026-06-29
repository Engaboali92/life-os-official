# WI-FN-004: Finance Application Use Cases

Owner: Application Team

Status: Ready

Depends On

- WI-FN-001
- WI-FN-002
- WI-FN-003
- WI-AP-001
- WI-AP-002

Objective

Implement Finance application coordination.

Allowed Files

- src/application/use-cases/finance
- src/application/services/finance
- tests/unit/application/finance
- tests/integration/application-modules/finance

Required Outputs

- CreateAccountUseCase
- UpdateAccountUseCase
- RecordTransactionUseCase
- CategorizeTransactionUseCase
- CreateBudgetUseCase
- UpdateBudgetUseCase
- GetFinanceSummaryUseCase
- Tests

Acceptance Criteria

- Use cases coordinate only.
- No finance rules are duplicated.
- Errors are mapped to application responses.
- Tests pass.
