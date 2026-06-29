# Kernel Implementation

## Owner

Kernel Team

## Purpose

Implement the immutable domain foundation used by every layer of Life OS.

The Kernel defines the core business abstractions and must remain independent from frameworks, databases, transport protocols, and infrastructure.

## Allowed Files

- src/kernel
- tests/unit/kernel

## Must Not Touch

- src/data
- src/application
- src/modules
- src/command
- src/interface
- src/infrastructure
- src/integration
- src/automation

## Inputs

- Architecture contracts
- Domain specifications
- Event contracts
- Value object definitions

## Outputs

- Domain primitives
- Value Objects
- Domain Events
- Domain Services
- Ports
- Exceptions

## Required Behavior

- Maintain domain integrity
- Provide stable abstractions
- Prevent infrastructure leakage
- Remain deterministic

## Contracts

- contracts/interfaces/module-kernel-contract.md
- contracts/interfaces/kernel-data-contract.md
- specifications/layers/kernel-layer.md
- specifications/events/event-contract.md

## Tests Required

- Value Object tests
- Domain Event tests
- Domain Service tests
- Port tests
- Exception tests

## Acceptance Criteria

- No framework dependency
- No infrastructure dependency
- No persistence dependency
- Unit tests pass
- No placeholders
