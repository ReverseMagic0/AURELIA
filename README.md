# AURELIA

**Premium Mobile Engineering Foundation** — a governed, reusable Flutter foundation for building distinct, production-grade iOS and Android applications.

> AURELIA is the foundation/platform project. It is not an individual end-user app and is not Mobile Foundry (`C:\\afk`).

## Project status

**Bootstrap / Phase 00 — governance and repository foundation.** This repository is being established incrementally. A document, directory, or planned capability is not evidence that its implementation exists or has been verified.

See:
- [Current state](project_state/CURRENT_STATE.md)
- [Roadmap](product/ROADMAP.md)
- [Engineering constitution](governance/ENGINEERING_CONSTITUTION.md)
- [AI working rules](governance/AI_WORKING_RULES.md)
- [Architecture](governance/ARCHITECTURE.md)

## Non-negotiable principles

1. Build the simplest complete solution that satisfies a demonstrated requirement.
2. One authoritative home for each policy, decision, and status.
3. No fake production behavior, hidden placeholders, speculative abstractions, dead code, or decorative architecture.
4. Tests and verification must be executed before being reported as passing.
5. Design, accessibility, localization, security, reliability, and performance are engineering concerns from the start.
6. Platform-specific behavior is explicit and isolated; iOS and Android are first-class targets.
7. AI-generated changes follow the same review and evidence standards as human changes.

## Working agreement

Read `AGENTS.md` before changing the repository. For every non-trivial change:
- inspect the existing implementation first;
- identify requirements, constraints, risks, and affected boundaries;
- make a focused change;
- run the relevant checks (or explicitly record why they could not run);
- update the authoritative documentation and project state;
- report facts separately from assumptions and plans.

## Scope

- Flutter / Dart
- iOS and Android
- go_router and Riverpod, without code generation
- Feature-first organization with pragmatic boundaries
- AURELIA-owned visual design system; Material is infrastructure, not the visual identity
- English and Arabic, including RTL
- Light, dark, and system appearance
- Automated quality gates and a real reference application

## License

No license has been selected yet. Until a license is added, do not assume this repository grants permission to redistribute or reuse its contents.
