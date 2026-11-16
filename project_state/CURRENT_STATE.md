# Current project state

Last updated: 2026-11-16

## Repository
- Repository: `ReverseMagic0/AURELIA`
- Default branch: `main`
- Working branch: `foundation/phase-01-quality-baseline`
- Visibility observed at bootstrap: public.

## Delivery status
- Repository identity and scope: recorded.
- Engineering and AI governance: initial baseline committed; review and iterative hardening remain ongoing.
- Flutter application source scaffold: committed (app shell, router, theme scope, manual locale delegate, one foundation screen). Native Android/iOS host projects are not yet committed.
- Dependency constraints recorded in `pubspec.yaml`; dependency resolution succeeded in a prior CI run, but the generated lockfile is not committed yet.
- Automated tests: smoke test and focused localization tests are authored. They have not been executed successfully in an observed CI run.
- GitHub Actions: analyze/test workflow is committed. The latest observed main-branch run failed at Dart formatting before analyzer and tests; formatter normalization is committed on the working branch. A run for the latest working-branch commit is still pending.
- Android/iOS builds: none run.
- Device verification: none run.
- Security, performance, and accessibility audits: not performed.
- Repository structure: the complete default-branch tree was read successfully; this is not evidence of compilation or runtime correctness.

## Important constraints
- Separate from Mobile Foundry at `C:\\afk`.
- Flutter / Dart, iOS and Android.
- go_router and Riverpod.
- No code generation, Freezed, or build_runner.
- AURELIA-owned visual system; Material is infrastructure only.

## Current work
- Added focused tests for locale support, regional locale resolution, fallback behavior, and English/Arabic copy.
- Normalized existing Dart formatting based on the formatter failures observed in GitHub Actions.
- No runtime behavior or dependency changes were introduced in this quality-baseline change.

## Next action
Verify the formatter remediation through CI, then run analyzer and tests. Commit the resolved dependency lockfile, and only then generate native host projects using the pinned Flutter SDK and verify Android/iOS builds.

## Evidence rule
Update this file when repository reality changes. Never convert planned work into completed work by changing wording alone.
