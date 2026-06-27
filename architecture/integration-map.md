# Life OS Integration Map

**Document ID:** LOS-ARC-005

**Status:** Draft

**Owner:** Architecture Team

---

# Purpose

This document defines how the Life OS platform communicates with external systems.

It establishes the architectural boundaries between the platform and third-party services.

---

# Integration Principle

External systems are adapters, not part of the Life OS Core.

The platform shall remain independent from any specific external technology.

---

# Integration Categories

## Data Providers

External systems that provide data to Life OS.

Examples:

- Notion
- Apple Health
- Calendar
- Email

---

## Data Consumers

External systems that receive data from Life OS.

Examples:

- Notifications
- Reports
- Dashboards
- Messaging Platforms

---

## Automation Services

External services responsible for executing workflows.

Examples:

- n8n
- Google Apps Script
- Future Automation Engines

---

## Infrastructure Services

Services supporting deployment and operation.

Examples:

- GitHub
- Render
- Raspberry Pi
- Monitoring Services
- Backup Services

---

# Communication Rules

- Every integration must have a documented contract.
- External failures shall not compromise the platform integrity.
- Integrations must communicate through the Integration Layer only.
- Business logic must never depend directly on third-party services.

---

# Future Integrations

Additional integrations may be added without changing the Core Architecture, provided they comply with the platform contracts.

