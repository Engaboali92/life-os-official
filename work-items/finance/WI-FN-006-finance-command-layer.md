# WI-FN-006: Finance Command Layer

Owner: Command Team

Status: Ready

Depends On

- WI-CM-001
- WI-CM-002
- WI-CM-003
- WI-FN-004

Objective

Implement Finance command DTOs, validators, and handlers.

Allowed Files

- src/command/dto/finance
- src/command/validators/finance
- src/command/handlers/finance
- tests/unit/command/finance

Required Outputs

- CreateAccountCommand
- UpdateAccountCommand
- RecordTransactionCommand
- CategorizeTransactionCommand
- CreateBudgetCommand
- UpdateBudgetCommand
- Validators
- Handlers
- Tests

Acceptance Criteria

- Commands validate before execution.
- Commands route to Application Layer only.
- No Data Layer access.
- No business logic.
- Tests pass.
