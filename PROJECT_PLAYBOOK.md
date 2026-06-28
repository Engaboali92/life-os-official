# Life OS Project Playbook

**Document ID:** LOS-PLAY-001

**Status:** Active

**Owner:** Engineering Team

---

# Purpose

This playbook defines the daily engineering workflow for everyone contributing to Life OS.

It standardizes implementation, testing, reviews, releases, and architecture compliance.

---

# Daily Workflow

Every implementation session should follow this sequence:

1. Pull latest changes.
2. Review relevant documentation.
3. Review applicable contracts.
4. Review related ADRs.
5. Implement one logical change.
6. Write or update tests.
7. Run verification.
8. Commit.
9. Tag if milestone reached.
10. Push.

---

# Before Writing Code

Confirm:

- Architecture already covers the feature.
- Required contracts exist.
- Required specifications exist.
- No duplicate implementation already exists.
- Layer ownership is clear.

---

# Development Rules

- One logical change per commit.
- One responsibility per file.
- One architectural concern per layer.
- No undocumented shortcuts.
- No business logic outside modules or kernel.

---

# Branch Strategy

- main always remains stable.
- Work should be incremental.
- Every milestone must be reproducible from Git tags.

---

# Commit Checklist

Before every commit:

- Tests pass.
- No placeholder text.
- No debug code.
- No commented production code.
- Documentation updated if required.
- Architecture boundaries preserved.

---

# Code Review Checklist

Reviewers must verify:

- Correct layer ownership.
- Contract compliance.
- Naming consistency.
- Error handling.
- Logging.
- Test quality.
- Readability.
- No hidden coupling.

---

# Testing Checklist

Minimum verification:

- Unit tests
- Integration tests
- Regression tests where applicable

System tests are required for completed vertical slices.

---

# Architecture Checklist

Verify:

- Interface does not access Data directly.
- Modules remain isolated.
- Kernel contains only shared domain logic.
- Infrastructure contains no business rules.
- Repositories contain no domain decisions.

---

# Documentation Checklist

Update documentation whenever changing:

- Public contracts.
- APIs.
- Events.
- Workflows.
- Data model.
- Architecture decisions.

---

# Release Checklist

Before creating a release tag:

- All tests pass.
- Documentation synchronized.
- No placeholders remain.
- Version tagged.
- Repository clean.

---

# Definition of Ready

Implementation may begin only when:

- Requirements are documented.
- Contracts exist.
- Specifications exist.
- Architecture impact understood.

---

# Definition of Done

A task is complete only when:

- Implementation complete.
- Tests complete.
- Documentation updated.
- Code reviewed.
- Repository clean.
- Ready for integration.

---

# Engineering Principles

Always prefer:

- Simplicity
- Explicitness
- Testability
- Replaceability
- Maintainability

Never sacrifice architecture integrity for short-term convenience.

---

# Emergency Rule

When uncertain:

1. Read README.
2. Read DESIGN_PHILOSOPHY.md.
3. Read PROJECT_EXECUTION_GUIDE.md.
4. Read ADRs.
5. Read the relevant specification.
6. Then implement.

Architecture always has priority over implementation speed.
