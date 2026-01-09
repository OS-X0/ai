# AGENTS.md

## Global rules
- Default workflow: **Phase 1 → Phase 2 → Implementation**.
- Keep everything **small and reviewable**. If it doesn’t fit, split it.
- Prefer **minimal diffs**. No drive-by refactors, renames, or formatting-only changes.
- If required info is missing: ask **max 3** targeted questions, then stop.

## Fast path (skip workflow for “less than a feature”)
You may skip Phase 1/2 and go directly to implementation if the request is a small fix, e.g.:
- typos / copy changes
- tiny bugfix with clear scope
- small correction / small refactor within an existing file
- test fix, lint fix, build fix

**Rule of thumb:** no new architecture, no new module boundaries, no multi-file design work.
If unsure whether it’s a feature: do Phase 1.

## Planning source of truth
- `plan.md` is the single source of truth for planning.
- Phase 1 and Phase 2 outputs must be written into `plan.md` only.
- BML and Mermaid must be embedded as **code blocks** inside `plan.md`.

## Skills
Use these skills when applicable:
- **Phase 1 — Feature Ideation**: collaborate with the developer to produce Phase 1 in `plan.md`.
- **Phase 2 — Blueprint Planning**: produce Phase 2 in `plan.md` (BML + Mermaid + integration/reuse justification).

## Phase 1 behavior (read-only)
- Goal: understand the problem and propose a solution direction.
- Output: `plan.md` → “Phase 1 — Problem & Proposal”.
- Ask for explicit approval before moving to Phase 2.

## Phase 2 behavior (read-only)
- Goal: produce a blueprint that is reviewable in seconds.
- Must include:
  - BML blocks describing nodes/components/hooks/types/api clients
  - Mermaid overview graph matching the BML nodes
  - “Reuse vs new” integration section: find similar existing components and justify decisions
- Ask for explicit approval before implementation.

## Implementation behavior (after Phase 2 approval)
- Work in feature branches and/or try-branches as requested by the developer.
- Stay within the planned scope from `plan.md`. If deviation is needed, update `plan.md` first.
- In PRs: ensure the developer can checklist-review **every AI-changed file**.
- Incomplete work is allowed only if marked with `TODO:` (and not merged to main until complete).

## Communication style
- Be concise.
- Prefer checklists and short blocks over long explanations.
- When proposing changes, state:
  - what files change
  - why
  - how to verify
