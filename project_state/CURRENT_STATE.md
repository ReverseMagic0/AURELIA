# Current project state

Last updated: 2026-11-16

## Repository
- Repository: `ReverseMagic0/AURELIA`
- Default branch: `main`
- Visibility observed at bootstrap: public.
- Initial README commit exists.
- Governance baseline committed; review still required.

## Delivery status
- Repository identity and scope: recorded.
- Engineering and AI governance: initial baseline authored; review still required.
- Flutter application source scaffold: committed (app shell, router, theme scope, manual locale delegate, one foundation screen). Native Android/iOS host projects are not yet committed.
- Dependency constraints selected from current package metadata: Flutter 3.50.0 / Dart 3.14.0, go_router 18.1.4, flutter_riverpod 3.5.0, flutter_lints 6.0.0. Dependency resolution and lockfile generation are still pending.
- Automated tests: one smoke test authored; not run.
- Android/iOS builds: none run.
- Device verification: none run.
- Security/performance/accessibility audits: not performed.

## Important constraints
- Separate from Mobile Foundry at `C:\\afk`.
- Flutter / Dart, iOS and Android.
- go_router and Riverpod.
- No code generation, Freezed, or build_runner.
- AURELIA-owned visual system; Material is infrastructure only.

## Next action
Generate and review the dependency lockfile, run formatter/analyzer/tests, then add reviewed native Android/iOS host projects and verify platform builds.

## Evidence rule
Update this file when repository reality changes. Never convert planned work into completed work by changing wording alone.
