# Health Module TODO

## Phase 1: Domain Model

- [ ] Define HealthRecord aggregate
- [ ] Define HealthRecordId
- [ ] Define HealthRecordType
- [ ] Define HealthMeasurement
- [ ] Define MedicationRecord
- [ ] Define SupplementRecord
- [ ] Define Health domain errors

## Phase 2: Business Rules

- [ ] Validate health record creation
- [ ] Validate health record update
- [ ] Validate measurement value
- [ ] Validate medication record
- [ ] Validate supplement record
- [ ] Prevent modification of archived health records

## Phase 3: Domain Events

- [ ] Implement health-record-created event
- [ ] Implement health-record-updated event
- [ ] Implement health-measurement-recorded event
- [ ] Implement medication-recorded event
- [ ] Implement supplement-recorded event
- [ ] Implement health-record-archived event

## Phase 4: Module Services

- [ ] Implement health record creation logic
- [ ] Implement measurement recording logic
- [ ] Implement medication tracking logic
- [ ] Implement supplement tracking logic
- [ ] Implement health statistics calculation

## Phase 5: Testing

- [ ] Test health record creation
- [ ] Test invalid health record rejection
- [ ] Test measurement validation
- [ ] Test medication tracking
- [ ] Test supplement tracking
- [ ] Test archived record protection
- [ ] Test event production

## Phase 6: Acceptance

- [ ] No infrastructure dependency
- [ ] No direct module-to-module calls
- [ ] Health rules remain inside module
- [ ] Unit tests pass
