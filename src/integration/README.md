# Integration Implementation

## Owner

Integration Team

## Purpose

Implement external providers, imports, exports, and webhooks for Life OS.

The Integration Layer communicates with external systems while isolating the rest of the application from provider-specific behavior.

## Allowed Files

- src/integration
- tests/unit/integration
- tests/integration/automation-integration

## Must Not Touch

- src/modules
- src/data
- src/interface
- src/infrastructure

## Inputs

- Application requests
- Automation jobs
- Provider responses
- External events

## Outputs

- Provider requests
- Provider responses
- Import results
- Export results
- Webhook events

## Required Behavior

- Isolate provider implementations
- Handle provider failures
- Normalize external data
- Never implement business rules

## Contracts

- contracts/interfaces/automation-integration-contract.md
- specifications/apis/integrations/integration-api.md
- specifications/infrastructure/infrastructure-overview.md
- specifications/layers/integration-layer.md

## Tests Required

- Provider tests
- Import tests
- Export tests
- Webhook tests
- Integration tests

## Acceptance Criteria

- No business logic
- Providers isolated
- Failures handled consistently
- Unit tests pass
- Integration tests pass
