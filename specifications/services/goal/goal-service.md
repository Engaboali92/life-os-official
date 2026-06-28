# goal service

**Status:** Draft  
**Owner:** Backend Team

---

# Purpose

Define the reusable application capability provided by goal service.

---

# Scope

The service coordinates reusable operations without owning module business rules.

---

# Inputs

- Application requests
- Module requests
- Kernel service requests

---

# Processing

- Receive service request
- Validate request structure
- Coordinate required operation
- Return structured result

---

# Outputs

- Service result
- Service error
- Event request
- Data request

---

# Dependencies

- Application Layer
- Kernel Layer
- Data Layer when required

---

# Rules

- No UI logic.
- No direct external integration.
- No business domain ownership unless delegated by module contract.

---

# Acceptance Criteria

- Service contract defined.
- Inputs and outputs defined.
- Tests defined.
