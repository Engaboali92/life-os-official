# Goal Module TODO

## Phase 1: Domain Model

- [ ] Define Goal aggregate
- [ ] Define GoalId
- [ ] Define GoalStatus
- [ ] Define GoalProgress
- [ ] Define GoalMilestone
- [ ] Define Goal domain errors

## Phase 2: Business Rules

- [ ] Validate goal creation
- [ ] Validate goal update
- [ ] Validate progress update
- [ ] Validate milestone completion
- [ ] Validate goal completion
- [ ] Prevent modification of archived goals

## Phase 3: Domain Events

- [ ] Implement goal-created event
- [ ] Implement goal-updated event
- [ ] Implement goal-progress-updated event
- [ ] Implement goal-completed event
- [ ] Implement goal-archived event

## Phase 4: Module Services

- [ ] Implement goal creation logic
- [ ] Implement progress calculation
- [ ] Implement milestone evaluation
- [ ] Implement completion evaluation
- [ ] Implement archive logic

## Phase 5: Testing

- [ ] Test goal creation
- [ ] Test progress updates
- [ ] Test completion
- [ ] Test milestone logic
- [ ] Test archived goal protection
- [ ] Test events

## Phase 6: Acceptance

- [ ] No infrastructure dependency
- [ ] No direct module-to-module calls
- [ ] Business rules remain inside module
- [ ] Unit tests pass
