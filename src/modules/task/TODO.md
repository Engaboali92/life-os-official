# Task Module TODO

## Phase 1: Domain Model

- [ ] Define Task aggregate
- [ ] Define TaskId value object
- [ ] Define TaskStatus value object
- [ ] Define TaskPriority value object
- [ ] Define TaskDueDate value object
- [ ] Define Task domain errors

## Phase 2: Business Rules

- [ ] Validate task creation
- [ ] Validate task update
- [ ] Validate task completion
- [ ] Validate task reopening
- [ ] Prevent invalid status transitions
- [ ] Prevent modification of archived tasks
- [ ] Define task lifecycle rules

## Phase 3: Domain Events

- [ ] Implement task-created event
- [ ] Implement task-updated event
- [ ] Implement task-completed event
- [ ] Implement task-reopened event
- [ ] Implement task-archived event
- [ ] Ensure events follow Event Contract

## Phase 4: Module Services

- [ ] Implement task creation logic
- [ ] Implement task update logic
- [ ] Implement task completion logic
- [ ] Implement task reopen logic
- [ ] Implement task archive logic
- [ ] Implement task statistics calculation

## Phase 5: Testing

- [ ] Test successful task creation
- [ ] Test invalid task rejection
- [ ] Test completion behavior
- [ ] Test reopening behavior
- [ ] Test archived task protection
- [ ] Test event production
- [ ] Test state transitions

## Phase 6: Acceptance

- [ ] No infrastructure dependency
- [ ] No direct module-to-module calls
- [ ] Business rules remain inside module
- [ ] Unit tests pass
- [ ] README acceptance criteria satisfied
