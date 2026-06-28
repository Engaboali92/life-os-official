# Life OS Ownership Map

**Document ID:** LOS-OWN-001

**Status:** Active

**Owner:** Engineering Team

---

# Purpose

This document defines code ownership for Life OS implementation.

It ensures every team works inside the existing project structure without creating parallel structures, duplicate folders, or hidden ownership conflicts.

---

# Core Rule

Teams must work inside the current source tree.

No team may create an alternative architecture, parallel package system, or replacement folder structure.

The existing implementation structure is the official execution structure.

---

# Official Source Structure

```text
src/shared
src/kernel
src/data
src/modules
src/application
src/command
src/automation
src/integration
src/interface
src/infrastructure
```

---

# Official Test Structure

```text
tests/unit/shared
tests/unit/kernel
tests/unit/data
tests/unit/modules
tests/unit/application
tests/unit/command
tests/unit/automation
tests/unit/integration
tests/unit/interface
tests/integration/kernel-data
tests/integration/application-modules
tests/integration/automation-integration
tests/system/end-to-end
tests/regression/architecture
```

---

# Ownership Matrix

## Shared Team

### Owns

```text
src/shared
tests/unit/shared
```

### May Read

```text
DESIGN_PHILOSOPHY.md
PROJECT_EXECUTION_GUIDE.md
PROJECT_PLAYBOOK.md
ARCHITECTURE_DECISION_RECORDS.md
specifications
contracts
```

### Must Not Touch

```text
src/kernel
src/data
src/modules
src/application
src/command
src/automation
src/integration
src/interface
src/infrastructure
```

### Responsibility

- Shared types
- Shared constants
- Shared errors
- Shared utilities
- Shared validation primitives

Shared code must remain framework-independent and must not contain business rules.

---

## Kernel Team

### Owns

```text
src/kernel
tests/unit/kernel
```

### May Read

```text
src/shared
contracts/interfaces/module-kernel-contract.md
contracts/interfaces/kernel-data-contract.md
specifications/layers/kernel-layer.md
PROJECT_EXECUTION_GUIDE.md
DESIGN_PHILOSOPHY.md
```

### Must Not Touch

```text
src/modules
src/application
src/command
src/interface
src/infrastructure
```

### Responsibility

- Shared domain services
- Domain primitives
- Kernel ports
- Kernel events
- Kernel exceptions

Kernel must not contain module-specific business rules.

---

## Data Team

### Owns

```text
src/data
tests/unit/data
tests/integration/kernel-data
```

### May Read

```text
src/shared
src/kernel/ports
contracts/interfaces/kernel-data-contract.md
contracts/interfaces/module-data-contract.md
specifications/data
specifications/layers/data-layer.md
```

### Must Not Touch

```text
src/modules
src/application
src/command
src/interface
```

### Responsibility

- Entities
- Repositories
- DTOs
- Mappers
- Migrations
- Schemas

Data Layer must not contain business rules.

---

## Modules Team

### Owns

```text
src/modules
tests/unit/modules
```

### May Read

```text
src/shared
src/kernel
src/data
contracts/interfaces/application-module-contract.md
contracts/interfaces/module-kernel-contract.md
contracts/interfaces/module-data-contract.md
specifications/modules
specifications/events/module
```

### Must Not Touch

```text
src/application
src/command
src/interface
src/infrastructure
```

### Responsibility

- Business rules
- Domain behavior
- Module events
- Module validation
- Module state transitions

Modules must not directly communicate with other modules.

---

## Application Team

### Owns

```text
src/application
tests/unit/application
tests/integration/application-modules
```

### May Read

```text
src/shared
src/kernel
src/modules
src/data
contracts/interfaces/application-module-contract.md
contracts/interfaces/command-application-contract.md
contracts/interfaces/automation-application-contract.md
specifications/workflows
specifications/services
```

### Must Not Touch

```text
src/interface
src/infrastructure
```

### Responsibility

- Use cases
- Workflow coordination
- Cross-module orchestration
- Application services
- Application DTOs

Application Layer coordinates business execution but does not own domain rules.

---

## Command Team

### Owns

```text
src/command
tests/unit/command
```

### May Read

```text
src/shared
src/application
contracts/interfaces/command-application-contract.md
specifications/apis/commands/command-api.md
```

### Must Not Touch

```text
src/modules
src/data
src/infrastructure
```

### Responsibility

- Command handlers
- Command validation
- Command DTOs
- Command routing

Command Layer must not access Data Layer directly.

---

## Automation Team

### Owns

```text
src/automation
tests/unit/automation
tests/integration/automation-integration
```

### May Read

```text
src/shared
src/application
src/integration
contracts/interfaces/automation-application-contract.md
contracts/interfaces/automation-integration-contract.md
specifications/automation
specifications/workflows
specifications/events/automation
```

### Must Not Touch

```text
src/modules
src/data
src/interface
```

### Responsibility

- Scheduler
- Jobs
- Workflow execution
- Retry handling
- Automation monitoring

Automation must not own business rules.

---

## Integration Team

### Owns

```text
src/integration
tests/unit/integration
tests/integration/automation-integration
```

### May Read

```text
src/shared
src/application
contracts/interfaces/automation-integration-contract.md
contracts/interfaces/integration-infrastructure-contract.md
specifications/apis/integrations
specifications/events/integration
```

### Must Not Touch

```text
src/modules
src/data
src/interface
```

### Responsibility

- External providers
- Webhooks
- Imports
- Exports
- Synchronization adapters

Integration must isolate external systems from business logic.

---

## Interface Team

### Owns

```text
src/interface
tests/unit/interface
tests/system/end-to-end
```

### May Read

```text
src/shared
src/command
src/application
specifications/apis
contracts/interfaces/interface-command-contract.md
```

### Must Not Touch

```text
src/modules
src/data
src/infrastructure
```

### Responsibility

- API adapters
- Controllers
- Web interface adapters
- Request and response mapping

Interface Layer must not contain business logic.

---

## Infrastructure Team

### Owns

```text
src/infrastructure
tests/regression/architecture
```

### May Read

```text
src/shared
specifications/infrastructure
contracts/interfaces/integration-infrastructure-contract.md
PROJECT_EXECUTION_GUIDE.md
PROJECT_PLAYBOOK.md
```

### Must Not Touch

```text
src/modules
src/application
src/command
```

### Responsibility

- Configuration
- Database runtime setup
- Logging
- Monitoring
- Security infrastructure
- Deployment support

Infrastructure supports runtime but must not define business behavior.

---

# Integration Ownership

Integration tests are shared ownership.

When two teams are involved, both teams must approve the integration test.

Examples:

```text
tests/integration/kernel-data
```

Owned jointly by:

- Kernel Team
- Data Team

```text
tests/integration/application-modules
```

Owned jointly by:

- Application Team
- Modules Team

```text
tests/integration/automation-integration
```

Owned jointly by:

- Automation Team
- Integration Team

---

# System Test Ownership

```text
tests/system/end-to-end
```

Owned jointly by:

- Interface Team
- Application Team
- QA Team

---

# Regression Test Ownership

```text
tests/regression/architecture
```

Owned jointly by:

- Architecture Team
- QA Team
- Infrastructure Team

---

# Team Rules

Each team must:

- Work only inside owned folders unless a documented exception exists.
- Add or update tests for every implementation change.
- Respect all contracts.
- Avoid hidden dependencies.
- Avoid duplicate abstractions.
- Keep folders aligned with the official source tree.

---

# Change Request Rules

A team may request access outside its owned area only when:

- The change is necessary.
- The owner team approves.
- The reason is documented.
- The change does not violate architecture boundaries.

---

# Handoff Requirements

Every team delivery must include:

- Code changes
- Tests
- Updated documentation if needed
- Integration notes
- Known limitations
- Clean Git status

---

# Acceptance Criteria

A team delivery is accepted only when:

- It stays inside the ownership boundary.
- Tests pass.
- Contracts are respected.
- No placeholders exist.
- No forbidden folder was modified.
- Integration points are documented.
- Review checklist is complete.

---

# Final Rule

Ownership protects architecture.

No team owns the whole system.

Every team owns a boundary.
