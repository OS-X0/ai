---
name: testing
description: Add or update unit, integration, or e2e tests with minimal, targeted coverage.
metadata:
  short-description: Testing guidance across the stack
---

# Testing

## When to use
- Adding or updating tests for new or changed behavior.
- Fixing failing tests or improving coverage in a focused area.

## Workflow
1. Identify existing test frameworks and patterns.
2. Add the smallest set of tests that verify the behavior change.
3. Prefer deterministic, isolated tests; mock only where needed.
4. Note any gaps or skipped areas in the response.

## Guardrails
- Avoid wide snapshot updates unless required.
- Ask at most 3 targeted questions if expected behavior is unclear.

## References
- Unit: `references/unit-testing.md`
- Integration: `references/integration-testing.md`
- E2E: `references/e2e-testing.md`
