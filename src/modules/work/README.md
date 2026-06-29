# Work Module Implementation

## Owner

Modules Team

## Purpose

Implement work activities, projects, work sessions, attendance, overtime, site records, productivity metrics, and work-related domain events.

The Work Module owns work business behavior only and must not contain persistence implementation, interface logic, or infrastructure behavior.

## Allowed Files

- src/modules/work
- tests/unit/modules/work

## Must Not Touch

- src/data
- src/application
- src/command
- src/interface
- src/infrastructure

## Inputs

- Work commands from Application Layer
- User context
- Project records
- Attendance records
- Work sessions
- Kernel services

## Outputs

- Work domain result
- Productivity statistics
- Validation errors
- Work domain events

## Required Behavior

- Create work project
- Record attendance
- Record work session
- Record overtime
- Record site activity
- Calculate productivity
- Produce work events

## Contracts

- contracts/interfaces/application-module-contract.md
- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/module-data-contract.md
- specifications/modules/work/work-module.md
- specifications/data/entities/work-entity.md

## Tests Required

- Project creation
- Attendance recording
- Work session recording
- Overtime recording
- Productivity calculation
- Event production

## Acceptance Criteria

- Work rules implemented
- Unit tests pass
- No infrastructure dependency
- No persistence implementation
