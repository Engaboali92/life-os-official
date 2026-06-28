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
