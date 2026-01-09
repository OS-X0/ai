---
name: project-setup
description: Set up a new full-stack project baseline (tooling, env, scripts, CI) with minimal, reviewable changes.
metadata:
  short-description: Bootstrap project tooling and baseline config
---

# Project Setup

## When to use
- New repo or major re-platform needing baseline tooling and scripts.
- Aligning lint/format/test/CI to a consistent baseline.

## Workflow
1. Confirm stack choices (frontend framework, backend runtime, DB, package manager, deployment target).
2. Scan for existing configs; prefer reuse and minimal diffs.
3. Add only the smallest set of configs/scripts to run, lint, format, and test.
4. Add env templates and CI stubs only if needed for the request.
5. Verify with a single representative command if available.

## Guardrails
- Keep diffs small; avoid reformat-only changes.
- Ask at most 3 targeted questions if required info is missing.

## References
- Tooling: `references/tooling.md`
- Environment: `references/env.md`
- CI: `references/ci.md`
