# Finance Module Implementation

## Owner

Modules Team

## Purpose

Implement financial records, accounts, budgets, transactions, spending categories, financial summaries, and finance-related domain events.

The Finance Module owns finance business behavior only and must not contain persistence implementation, interface logic, or infrastructure behavior.

## Allowed Files

- src/modules/finance
- tests/unit/modules/finance

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Finance commands from Application Layer
- User context
- Transaction records
- Budget rules
- Account records
- Kernel services

## Outputs

- Finance domain result
- Finance validation errors
- Financial statistics
- Finance domain events

## Required Behavior

- Create financial account
- Update financial account
- Record transaction
- Categorize transaction
- Create budget
- Update budget
- Calculate spending summary
- Produce finance events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/modules/finance/finance-module.md
- specifications/data/entities/finance-entity.md

## Tests Required

- Account creation
- Transaction recording
- Budget validation
- Spending summary calculation
- Archived record protection
- Event production

## Acceptance Criteria

- Finance business rules implemented
- Unit tests pass
- No infrastructure dependency
- No direct module-to-module calls
- No persistence implementation
- No placeholders
