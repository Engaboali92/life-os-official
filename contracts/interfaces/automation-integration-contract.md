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
