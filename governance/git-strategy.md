# Life OS Git Strategy

**Document ID:** LOS-GIT-001

**Status:** Draft

**Owner:** Architecture Team

---

# Purpose

This document defines the official Git workflow, branching model, tagging strategy, and repository management rules for the Life OS project.

---

# Repository Rules

- The main branch must always remain stable.
- Every commit represents one logical change.
- Every completed milestone must be tagged.
- No direct implementation without an approved specification.

---

# Branch Strategy

Main branches:

- main
- develop

Working branches:

- feature/*
- fix/*
- docs/*
- refactor/*
- hotfix/*

---

# Commit Rules

Each commit must contain one logical change only.

Commit prefixes:

- docs:
- feat:
- fix:
- refactor:
- test:
- chore:

---

# Tag Strategy

Tags represent stable project milestones.

Examples:

- v0.1-skeleton
- v1.0-governance
- v2.0-architecture
- v3.0-specifications
- v4.0-core
- v5.0-modules
- v6.0-integration
- v7.0-release

---

# Tag Requirements

A tag may only be created after:

- Documentation completed
- Review completed
- Tests passed
- Working tree clean
- Changes committed
- Changes pushed

---

# Repository Health Checklist

Before every tag:

- Documentation reviewed
- Architecture approved
- Specifications completed
- Tests completed
- Working tree clean
- Commit created
- Tag created

---

# Rule

Git history must clearly represent the evolution of the project.

