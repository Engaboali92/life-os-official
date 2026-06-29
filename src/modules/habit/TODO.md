# Habit Module TODO

## Phase 1: Domain Model

- [ ] Define Habit aggregate
- [ ] Define HabitId value object
- [ ] Define HabitStatus value object
- [ ] Define HabitFrequency value object
- [ ] Define HabitCompletion entity or record
- [ ] Define Habit domain errors

## Phase 2: Business Rules

- [ ] Validate habit creation
- [ ] Validate habit update
- [ ] Validate habit completion
- [ ] Prevent duplicate completion
- [ ] Prevent modification of archived habits
- [ ] Define habit state transitions

## Phase 3: Domain Events

- [ ] Implement habit-created event
- [ ] Implement habit-updated event
- [ ] Implement habit-completed event
- [ ] Implement habit-archived event
- [ ] Ensure events follow Event Contract

## Phase 4: Module Services

- [ ] Implement habit creation logic
- [ ] Implement habit update logic
- [ ] Implement habit completion logic
- [ ] Implement habit archive logic
- [ ] Implement habit statistics calculation

## Phase 5: Testing

- [ ] Test successful habit creation
- [ ] Test invalid habit rejection
- [ ] Test duplicate completion rejection
- [ ] Test archived habit protection
- [ ] Test event production
- [ ] Test state transitions

## Phase 6: Acceptance

- [ ] No infrastructure dependency
- [ ] No direct module-to-module calls
- [ ] Business rules remain inside module
- [ ] Unit tests pass
- [ ] README acceptance criteria satisfied
