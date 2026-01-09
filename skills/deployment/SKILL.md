---
name: deployment
description: Define build, release, and deployment steps with minimal CI/CD changes.
metadata:
  short-description: Build and deploy guidance
---

# Deployment

## When to use
- Adding or updating build, release, or deployment workflows.
- Defining environment-specific configuration requirements.

## Workflow
1. Identify existing CI/CD and deployment targets.
2. Keep pipeline changes minimal and focused on the request.
3. Document required env vars and secrets (placeholders only).
4. Provide a short release checklist if the flow is manual.

## Guardrails
- Avoid platform migrations unless explicitly requested.
- Ask at most 3 targeted questions if release flow is unclear.

## References
- Build/release: `references/build-release.md`
- CI/CD: `references/ci-cd.md`
- Env config: `references/env-config.md`
