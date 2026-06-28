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
