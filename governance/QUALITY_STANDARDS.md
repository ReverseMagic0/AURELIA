# Quality standards

## Quality model
Quality is fitness for the real requirement across correctness, usability, consistency, reliability, security, accessibility, performance, and maintainability. No single metric substitutes for this.

## Required checks by change type
- All Dart changes: formatter and static analysis.
- Domain logic: focused unit tests, including boundary and failure cases.
- State and widget behavior: provider/controller and widget tests where meaningful.
- Design-system changes: light/dark, Arabic/English, text scaling, semantics, and visual regression review.
- Routing/deep links: route resolution, redirects, back behavior, and state restoration tests where applicable.
- Persistence: migration, corruption, interrupted-write, and data-retention tests as applicable.
- Platform integration: iOS and Android builds plus device/simulator checks for platform-specific behavior.
- Security-sensitive changes: threat review, secret scanning, data-flow review, and dependency advisory review.

## Performance
Measure in profile/release mode on representative devices. Account for 60Hz, 90Hz, and 120Hz displays where available; do not treat one frame-time number as universal. Avoid unnecessary rebuilds, expensive synchronous work on the UI isolate, unbounded lists, and layout/paint churn. Establish budgets from measured reference-app baselines.

## Accessibility
Semantic labels and roles, focus order, contrast, touch target size, dynamic text scaling, reduced motion, and screen-reader behavior are part of acceptance. Verify with platform accessibility tools where possible.

## Visual regression
Golden tests are useful only with controlled fonts, deterministic data, stable rendering, and reviewed baselines. A passing golden suite does not replace human visual review on devices.

## Test quality
Test observable behavior and important invariants, not private implementation details. Include negative paths. Avoid brittle tests, meaningless snapshot volume, and coverage targets that encourage low-value tests.

## Evidence
Every report distinguishes checks run, checks passed, checks failed, and checks not run. CI status is authoritative only for the exact commit and workflow configuration shown.
