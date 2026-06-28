# Generate Report Workflow

**Document ID:** LOS-WFL-RPT-001

**Status:** Draft

**Owner:** Automation Team

---

# Purpose

The Generate Report Workflow produces analytical and operational reports by aggregating data across Life OS modules.

---

# Trigger

- User requests a report.
- Scheduled reporting execution.
- Automated reporting workflow.

---

# Preconditions

- User authenticated.
- Report definition exists.
- Required data is available.

---

# Inputs

- User context
- Report type
- Date range
- Filter parameters
- Output format

---

# Workflow Steps

1. Receive report request.
2. Validate authentication.
3. Validate report parameters.
4. Collect required data.
5. Aggregate module results.
6. Calculate statistics.
7. Generate report document.
8. Publish report-generated event.
9. Persist report metadata.
10. Return generated report.

---

# Decision Points

- Unsupported report type.
- Missing data.
- Empty result set.

---

# Outputs

- Generated report
- Report metadata
- Statistics
- Domain events
- Execution summary

---

# Produced Events

- report-generated
- report-exported

---

# External Integrations

None

---

# Error Handling

- Reject invalid parameters.
- Abort on aggregation failure.
- Roll back persistence failures.

---

# Retry Strategy

- Retry transient persistence failures only.

---

# Performance Requirements

- Large reports execute asynchronously.
- Streaming supported for large exports.

---

# Security

- Authentication required.
- Authorization enforced.
- Audit logging mandatory.

---

# Acceptance Criteria

- Trigger documented.
- Workflow documented.
- Outputs documented.
- Events documented.
- Errors documented.
