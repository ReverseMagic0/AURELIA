# Roadmap

Order reflects dependencies and risk, not a promise of calendar dates. Each phase must meet its acceptance criteria before being called complete.

## Phase 00 — Repository and engineering governance
- [x] Create the repository and initial project identity.
- [x] Establish agent instructions, project context, constitution, and initial policies.
- [ ] Review governance for contradictions and approve baseline.
- [ ] Add lightweight documentation/metadata validation where it provides real value.

## Phase 01 — Toolchain and Flutter application foundation
- [ ] Verify current stable Flutter/Dart and compatible go_router/Riverpod versions from authoritative sources.
- [ ] Create the minimal iOS/Android Flutter application scaffold.
- [ ] Configure bootstrap, environment boundaries, routing, and Riverpod composition.
- [ ] Add formatter/analyzer and a first meaningful test.
- [ ] Resolve dependencies and verify Android/iOS builds in available environments.

## Phase 02 — Design-system foundations
- [ ] Define semantic color, typography, spacing, radius, elevation, and motion tokens.
- [ ] Validate licensed Arabic/Latin font choices and rendering.
- [ ] Implement light/dark themes and system appearance.
- [ ] Add a small, representative component set with documented contracts.

## Phase 03 — Localization and platform behavior
- [ ] Typed manual English/Arabic localization without generated code.
- [ ] RTL/LTR, pluralization, formatting, persistence, and locale switching.
- [ ] Safe areas, keyboard/insets, back navigation, system bars, and lifecycle.

## Phase 04 — Interaction and reference app
- [ ] Motion primitives and reduced-motion behavior.
- [ ] Reference flows that exercise real state and failure behavior.
- [ ] Accessibility and visual regression review.

## Phase 05 — Production hardening
- [ ] Dependency/security review, performance baselines, device matrix, release guidance.
- [ ] Migration/versioning strategy and upgrade policy.
- [ ] End-to-end acceptance evidence and documentation.

Do not create speculative infrastructure for later phases before a concrete requirement or a validated design requires it.
