#!/usr/bin/env bash
set -e

cat > contracts/interfaces/interface-command-contract.md <<'EOT'
# Interface Command Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how the Interface Layer sends user requests to the Command Layer.

---

# Inputs

- User action
- Form payload
- Navigation request
- UI command

---

# Processing

The Interface Layer must convert user interaction into a structured command.

---

# Outputs

- Command name
- Command payload
- Request metadata

---

# Rules

- Interface must not call Application Layer directly.
- Interface must not contain business logic.
- Interface must not access data storage.
- All user actions must pass through Command Layer.

---

# Errors

- Invalid command format
- Missing required payload
- Unauthorized command source

---

# Acceptance Criteria

- Command format defined.
- Payload structure defined.
- Error structure defined.
EOT

cat > contracts/interfaces/command-application-contract.md <<'EOT'
# Command Application Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how the Command Layer routes validated commands to the Application Layer.

---

# Inputs

- Validated command
- Normalized payload
- Request metadata

---

# Processing

Command Layer identifies the target use case and forwards it to Application Layer.

---

# Outputs

- Use case request
- Routing result
- Command error

---

# Rules

- Command Layer must not execute business logic.
- Command Layer must not call modules directly.
- Command Layer must not access data storage.

---

# Errors

- Unknown command
- Invalid command structure
- Unauthorized command

---

# Acceptance Criteria

- Command routing defined.
- Application handlers mapped.
- Routing errors defined.
EOT

cat > contracts/interfaces/application-module-contract.md <<'EOT'
# Application Module Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how the Application Layer coordinates business modules.

---

# Inputs

- Use case request
- Workflow context
- Validated command data

---

# Processing

Application Layer calls the appropriate module to execute domain behavior.

---

# Outputs

- Domain request
- Domain result
- Domain error
- Domain event

---

# Rules

- Application Layer coordinates; modules own business rules.
- Application Layer must not implement module internals.
- Cross-module coordination belongs to Application Layer.

---

# Errors

- Invalid use case
- Module unavailable
- Domain operation failed

---

# Acceptance Criteria

- Module calls defined.
- Domain boundaries preserved.
- Errors documented.
EOT

cat > contracts/interfaces/module-kernel-contract.md <<'EOT'
# Module Kernel Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how modules consume shared Kernel services.

---

# Inputs

- Validation request
- Rule evaluation request
- Event publish request
- Permission check
- Time/config request

---

# Processing

Kernel provides shared system services without knowing module business meaning.

---

# Outputs

- Validation result
- Rule result
- Published event
- Permission result
- Log entry

---

# Rules

- Kernel must not contain module business logic.
- Modules must not access Kernel internals.
- Shared services must be explicit.

---

# Errors

- Kernel service unavailable
- Invalid system request
- Permission denied

---

# Acceptance Criteria

- Kernel service usage defined.
- Business logic excluded from Kernel.
- Errors documented.
EOT

cat > contracts/interfaces/module-data-contract.md <<'EOT'
# Module Data Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how modules request persistence through the Data Layer.

---

# Inputs

- Domain data
- Read request
- Write request
- Update request
- Delete request

---

# Processing

Data Layer persists or retrieves module data without owning business meaning.

---

# Outputs

- Stored record
- Retrieved record
- Operation result
- Data error

---

# Rules

- Modules must not access storage directly.
- Data Layer owns persistence only.
- Modules own business meaning.

---

# Errors

- Invalid data shape
- Storage unavailable
- Record not found

---

# Acceptance Criteria

- Data operations defined.
- Storage bypass prohibited.
- Errors documented.
EOT

cat > contracts/interfaces/kernel-data-contract.md <<'EOT'
# Kernel Data Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how Kernel stores and retrieves system metadata.

---

# Inputs

- Configuration data
- System log
- Event metadata
- Permission metadata

---

# Processing

Kernel requests persistence for system-level metadata only.

---

# Outputs

- Stored metadata
- Retrieved metadata
- System data error

---

# Rules

- Kernel must not store module business data.
- Data Layer must abstract persistence.
- System metadata must remain traceable.

---

# Errors

- Metadata invalid
- Storage unavailable
- Permission denied

---

# Acceptance Criteria

- Kernel data boundaries defined.
- Module data excluded.
- Errors documented.
EOT

cat > contracts/interfaces/automation-application-contract.md <<'EOT'
# Automation Application Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how Automation Layer triggers application use cases.

---

# Inputs

- Scheduled trigger
- Event trigger
- Automation request

---

# Processing

Automation Layer calls Application Layer when business behavior is required.

---

# Outputs

- Use case request
- Automation result
- Automation error

---

# Rules

- Automation must not own business logic.
- Automation must not call modules directly.
- Automation must use Application Layer for business operations.

---

# Errors

- Invalid trigger
- Use case failure
- Retry exhausted

---

# Acceptance Criteria

- Automation triggers defined.
- Application entry points defined.
- Errors documented.
EOT

cat > contracts/interfaces/automation-integration-contract.md <<'EOT'
# Automation Integration Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how Automation Layer requests external communication through Integration Layer.

---

# Inputs

- Notification request
- Sync request
- External workflow request

---

# Processing

Integration Layer executes external communication and returns normalized result.

---

# Outputs

- Integration request
- External result
- Integration error

---

# Rules

- Automation must not call external systems directly.
- Integration Layer owns external adapters.
- Secrets must not be exposed to workflows.

---

# Errors

- External service unavailable
- Invalid integration config
- Authentication failure

---

# Acceptance Criteria

- External calls routed through Integration.
- Errors documented.
- Secrets protected.
EOT

cat > contracts/interfaces/integration-infrastructure-contract.md <<'EOT'
# Integration Infrastructure Contract

**Status:** Draft  
**Owner:** Architecture Team

---

# Purpose

Defines how Integration Layer uses Infrastructure services.

---

# Inputs

- Runtime configuration
- Network request
- Secret request
- Monitoring request

---

# Processing

Infrastructure provides runtime, secrets, monitoring, and connectivity support.

---

# Outputs

- Runtime service
- Secret value
- Health status
- Infrastructure error

---

# Rules

- Integration must not hardcode infrastructure.
- Secrets must be managed by Infrastructure.
- External connectivity must be monitored.

---

# Errors

- Missing configuration
- Secret unavailable
- Network failure

---

# Acceptance Criteria

- Infrastructure dependencies defined.
- Secrets protected.
- Failures documented.
EOT

git add contracts/interfaces scripts/fill-level2-detailed-contracts.sh
git commit -m "docs: add detailed interface contracts"
git push
git tag v2.2-detailed-interface-contracts
git push origin v2.2-detailed-interface-contracts
