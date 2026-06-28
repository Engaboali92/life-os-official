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
