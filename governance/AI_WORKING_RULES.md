# AI working rules

## Required context at session start
Read, in order:
1. `AGENTS.md`
2. `governance/PROJECT_CONTEXT.md`
3. `project_state/CURRENT_STATE.md`
4. The relevant policy / architecture / ADR
5. The target implementation and its tests

Do not assume prior chat context overrides repository facts.

## Before implementation
For non-trivial work, identify:
- user outcome and acceptance criteria;
- in-scope and out-of-scope behavior;
- authoritative state and data ownership;
- failure and lifecycle cases;
- security, privacy, accessibility, localization, and platform impact;
- dependency and migration impact;
- verification strategy.

## Generation discipline
- Do not generate boilerplate for its own sake.
- Do not create speculative extension points or generic frameworks.
- Do not repeat the same policy across multiple files.
- Do not create empty folders, unused interfaces, placeholder screens, dead methods, fake services, or sample data in production.
- Avoid giant one-shot rewrites. Make cohesive, reviewable changes.
- Use current official documentation for version-sensitive APIs.
- Keep comments focused on why, invariants, and non-obvious constraints; do not narrate obvious code.
- Never suppress a warning without understanding and documenting the reason.
- Never weaken tests, lint rules, or CI to make a change appear green.

## Honest implementation states
Use these labels consistently:
- Planned: accepted intent, not implemented.
- In progress: implementation has started but is incomplete.
- Implemented: code exists; this does not imply it is tested.
- Tested: relevant automated test executed successfully.
- Device verified: exercised on a named device / simulator and OS version.
- Mock: test-only or explicitly labelled demonstration implementation.
- Placeholder: intentionally temporary and visibly incomplete.
- Blocked: cannot proceed without resolving a named blocker.

## Completion report
Report: outcome, changed files, important decisions, checks actually run, exact results, unverified areas, and next smallest valuable step. Do not claim repository-wide verification after checking only a subset.
