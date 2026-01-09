---
name: Phase 2 — Blueprint Planning
description: Create Phase 2 in plan.md: BML component plan + Mermaid graph + integration/reuse justification. No code.
---

# Phase 2 — Blueprint Planning

## First
- If anything in this skill feels unclear, **open and follow `AGENTS.md`** (repo root).
- If BML rules are unclear: use the **examples already in `plan.md`** and ask the developer for the expected BML conventions (do not invent a new dialect).

## Goal
Produce a developer-approved **Phase 2** plan in `plan.md`:
- **BML** in a code block
- **Mermaid** overview graph in a code block
- **Integration + reuse justification** (why reuse / why new)

No implementation. No new files besides editing `plan.md`.

## Inputs
- Read **Phase 1** from `plan.md`.
- Scan the repo for similar components/modules (search by names, routes, concepts).

## Rules
- Keep it **reviewable in seconds**.
- Prefer **component-level** nodes.
- Use **bundles** instead of prop-spam (e.g. `$item`, `$actions`).
- Reflect separation clearly:
  - UI components compose children and consume bundles
  - hooks orchestrate and return `$state/$actions`
  - API clients do IO
  - types define bundles

## What to produce in `plan.md`
Add/replace this section:

## Phase 2 — Blueprint (BML + Graph)

### Integration (reuse vs new)
- **Similar existing components found:**
  - `X` — why similar
  - `Y` — why similar
- **Reuse decisions:**
  - Reuse `X` because ...
- **New nodes required:**
  - New `Z` because ... (why not extend/merge with existing)

### BML
```bml
# One block per planned node/component (keep compact)
flowchart LR
  %% Nodes = planned components/modules
  %% Edges = “depends on / calls / composes”
```
