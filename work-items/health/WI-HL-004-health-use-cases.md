# WI-HL-004: Health Application Use Cases

Owner: Application Team

Status: Ready

Depends On

- WI-HL-001
- WI-HL-002
- WI-HL-003
- WI-AP-001
- WI-AP-002

Objective

Implement Health application coordination.

Allowed Files

- src/application/use-cases/health
- src/application/services/health
- tests/unit/application/health
- tests/integration/application-modules/health

Required Outputs

- CreateHealthRecordUseCase
- UpdateHealthRecordUseCase
- RecordMeasurementUseCase
- RecordMedicationUseCase
- RecordSupplementUseCase
- ArchiveHealthRecordUseCase
- GetHealthStatisticsUseCase
- Tests

Acceptance Criteria

- Use cases coordinate only.
- No health rules are duplicated.
- Errors are mapped to application responses.
- Tests pass.
