# WI-HL-001: Health Domain Model

Owner: Modules Team

Status: Ready

Objective

Implement the Health domain model.

Inputs

- specifications/modules/health/health-module.md
- specifications/data/entities/health-entity.md
- DESIGN_PHILOSOPHY.md
- PROJECT_EXECUTION_GUIDE.md

Allowed Files

- src/modules/health
- tests/unit/modules/health

Forbidden Files

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

Required Outputs

- HealthRecord aggregate
- HealthRecordId
- HealthRecordType
- HealthMeasurement
- MedicationRecord
- SupplementRecord
- Health domain errors
- Unit tests

Acceptance Criteria

- Health records belong to one user.
- Invalid health data is rejected.
- Health identity is immutable.
- No infrastructure dependency exists.
- Unit tests pass.
