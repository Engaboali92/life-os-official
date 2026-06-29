# Shared Implementation

## Owner

Shared Team

## Purpose

Provide implementation-neutral primitives used across Life OS.

Shared code must be stable, framework-independent, and free from business rules.

## Allowed Files

- src/shared
- tests/unit/shared

## Must Not Touch

- src/kernel
- src/data
- src/modules
- src/application
- src/command
- src/automation
- src/integration
- src/interface
- src/infrastructure

## Inputs

- Common engineering needs from all layers
- Architecture rules
- Coding standards
- Error handling rules
- Validation rules

## Outputs

- Shared types
- Shared constants
- Shared structured errors
- Shared utility functions
- Shared validation primitives

## Required Behavior

- Provide common reusable primitives
- Avoid business-specific behavior
- Avoid framework-specific behavior
- Avoid hidden dependencies

## Contracts

- DESIGN_PHILOSOPHY.md
- PROJECT_EXECUTION_GUIDE.md
- PROJECT_PLAYBOOK.md
- OWNERSHIP.md

## Tests Required

- Shared type behavior
- Shared error behavior
- Validation utility behavior
- Utility function behavior

## Acceptance Criteria

- No business logic
- No infrastructure dependency
- No framework dependency
- Unit tests pass
- No placeholders
