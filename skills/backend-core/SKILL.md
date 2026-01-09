---
name: backend-core
description: Implement or review backend APIs, data access, and auth with consistent patterns and minimal changes.
metadata:
  short-description: Backend API and data patterns
---

# Backend Core

## When to use
- Building or modifying API endpoints, services, or data access.
- Adding authentication or authorization behavior.

## Workflow
1. Identify existing API patterns, error handling, and data access layers.
2. Extend existing services and schemas rather than introducing new layers.
3. Validate auth requirements and failure modes.
4. Add minimal tests or contracts if needed.

## Guardrails
- Avoid schema changes unless explicitly requested.
- Ask at most 3 targeted questions if API behavior is unclear.

## References
- API design: `references/api-design.md`
- DB access: `references/db-access.md`
- Auth: `references/auth.md`
