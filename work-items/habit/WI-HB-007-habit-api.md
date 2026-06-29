# WI-HB-007: Habit API

**Owner:** Interface Team  
**Area:** src/interface  
**Status:** Ready

---

# Objective

Implement Habit API endpoints and controllers.

---

# Depends On

- WI-HB-006
- WI-HB-004

---

# Inputs

- specifications/apis/modules/module-api.md
- specifications/apis/commands/command-api.md
- specifications/apis/queries/query-api.md
- contracts/interfaces/interface-command-contract.md

---

# Allowed Files

- src/interface/api/habit
- src/interface/controllers/habit
- tests/unit/interface/habit
- tests/system/end-to-end/habit

---

# Required Outputs

- Create Habit endpoint
- Update Habit endpoint
- Delete Habit endpoint
- Complete Habit endpoint
- Get Habit endpoint
- List Habits endpoint
- Habit Statistics endpoint
- Unit and system tests

---

# Acceptance Criteria

- API follows documented contracts.
- No business logic.
- No direct data access.
- Error responses are structured.
- Tests pass.
