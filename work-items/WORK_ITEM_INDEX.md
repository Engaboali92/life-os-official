# Work Item Index

**Document ID:** LOS-WI-001

**Status:** Active

---

# Purpose

This index lists executable work items that can be assigned to teams or agents.

Each work item is independently readable and must be implemented within its allowed boundaries.

---

# Habit Slice

| ID | Title | Owner | Depends On |
|----|-------|-------|------------|
| WI-HB-001 | Habit Domain Model | Modules Team | None |
| WI-HB-002 | Habit Business Rules | Modules Team | WI-HB-001 |
| WI-HB-003 | Habit Domain Events | Modules Team | WI-HB-001, WI-HB-002 |
| WI-HB-004 | Habit Application Use Cases | Application Team | WI-HB-001, WI-HB-002, WI-HB-003 |
| WI-HB-005 | Habit Repository | Data Team | WI-HB-001 |
| WI-HB-006 | Habit Command Layer | Command Team | WI-HB-004 |
| WI-HB-007 | Habit API | Interface Team | WI-HB-004, WI-HB-006 |

---

# Execution Rule

A work item may start only when its dependencies are complete, unless explicitly approved by the Architecture Team.

---

# Delivery Rule

Every work item delivery must include:

- Code
- Tests
- Clean git status
- No placeholders
- Contract compliance
- Integration notes when needed
