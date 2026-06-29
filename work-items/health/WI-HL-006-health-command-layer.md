# WI-HL-006: Health Command Layer

Owner: Command Team

Status: Ready

Depends On

- WI-CM-001
- WI-CM-002
- WI-CM-003
- WI-HL-004

Objective

Implement Health command DTOs, validators, and handlers.

Allowed Files

- src/command/dto/health
- src/command/validators/health
- src/command/handlers/health
- tests/unit/command/health

Required Outputs

- CreateHealthRecordCommand
- UpdateHealthRecordCommand
- RecordMeasurementCommand
- RecordMedicationCommand
- RecordSupplementCommand
- ArchiveHealthRecordCommand
- Validators
- Handlers
- Tests

Acceptance Criteria

- Commands validate before execution.
- Commands route to Application Layer only.
- No Data Layer access.
- No business logic.
- Tests pass.
