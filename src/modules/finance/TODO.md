# Finance Module TODO

## Phase 1: Domain Model

- [ ] Define FinancialAccount aggregate
- [ ] Define Transaction entity
- [ ] Define Budget entity
- [ ] Define Money value object
- [ ] Define Currency value object
- [ ] Define FinanceCategory value object
- [ ] Define Finance domain errors

## Phase 2: Business Rules

- [ ] Validate account creation
- [ ] Validate transaction amount
- [ ] Validate transaction category
- [ ] Validate budget creation
- [ ] Validate budget updates
- [ ] Prevent modification of archived records

## Phase 3: Domain Events

- [ ] Implement financial-account-created event
- [ ] Implement transaction-recorded event
- [ ] Implement transaction-categorized event
- [ ] Implement budget-created event
- [ ] Implement budget-updated event
- [ ] Implement finance-record-archived event

## Phase 4: Module Services

- [ ] Implement account management logic
- [ ] Implement transaction recording logic
- [ ] Implement category logic
- [ ] Implement budget logic
- [ ] Implement finance summary calculation

## Phase 5: Testing

- [ ] Test account creation
- [ ] Test transaction recording
- [ ] Test invalid amount rejection
- [ ] Test budget rules
- [ ] Test archive protection
- [ ] Test event production

## Phase 6: Acceptance

- [ ] No infrastructure dependency
- [ ] No direct module-to-module calls
- [ ] Finance rules remain inside module
- [ ] Unit tests pass
