# Habit Command Handlers TODO

## Phase 1: Command DTOs

- [ ] Define CreateHabitCommand
- [ ] Define UpdateHabitCommand
- [ ] Define DeleteHabitCommand
- [ ] Define CompleteHabitCommand

## Phase 2: Validators

- [ ] Validate CreateHabitCommand
- [ ] Validate UpdateHabitCommand
- [ ] Validate DeleteHabitCommand
- [ ] Validate CompleteHabitCommand

## Phase 3: Handlers

- [ ] Implement CreateHabitCommandHandler
- [ ] Implement UpdateHabitCommandHandler
- [ ] Implement DeleteHabitCommandHandler
- [ ] Implement CompleteHabitCommandHandler

## Phase 4: Routing

- [ ] Route commands to Application Use Cases
- [ ] Pass user context
- [ ] Pass request metadata
- [ ] Return command result

## Phase 5: Testing

- [ ] Test valid command routing
- [ ] Test invalid command rejection
- [ ] Test use case invocation
- [ ] Test error propagation

## Phase 6: Acceptance

- [ ] No business logic
- [ ] No persistence access
- [ ] Commands validated before execution
- [ ] Unit tests pass
