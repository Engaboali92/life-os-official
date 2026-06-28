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
