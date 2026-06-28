# Command API

**Document ID:** LOS-API-CMD-001

**Status:** Draft

**Owner:** Application Team

---

# Purpose

The Command API exposes all state-changing operations within Life OS.

Commands represent user intentions that modify the system state.

---

# Base Path

/api/v1/commands

---

# Supported Commands

- Create
- Update
- Complete
- Archive
- Restore
- DeleteLogical
- Execute
- Cancel

---

# Command Rules

- Commands are immutable.
- Every command has a unique identifier.
- Commands execute exactly once whenever possible.
- Commands are validated before execution.
- Commands may publish domain events.

---

# Request Structure

- commandId
- commandType
- userId
- timestamp
- payload

---

# Response Structure

- commandId
- status
- result
- executionTime
- errors

---

# Error Codes

- 400 ValidationError
- 401 AuthenticationError
- 403 AuthorizationError
- 404 ResourceNotFound
- 409 ConflictError
- 500 InternalServerError

---

# Security

- Authentication required.
- Authorization enforced.
- HTTPS required.
- Audit logging mandatory.

---

# Performance

- Idempotent execution supported.
- Command timeout configurable.
- Concurrent execution supported.

---

# Acceptance Criteria

The Command API is complete only when:

- Commands documented.
- Request structure documented.
- Response structure documented.
- Error model documented.
- Security documented.
