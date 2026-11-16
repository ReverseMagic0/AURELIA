# Current project state

Last updated: 2026-11-16

## Repository
- Repository: `ReverseMagic0/AURELIA`
- Default branch: `main`
- Working branch: `foundation/phase-01-quality-baseline`
- Visibility: intentionally public to enable external AI and human review. This is a deliberate product decision, not a configuration mistake.

## Delivery status
- Repository identity and scope: recorded.
- Engineering and AI governance: initial baseline committed; public-review handling and AI contribution rules are now explicit.
- Flutter application source scaffold: committed (app shell, router, theme scope, manual locale delegate, one foundation screen). Native Android/iOS host projects are not yet committed.
- Dependency constraints recorded in `pubspec.yaml`; dependency resolution succeeded in CI, but the generated lockfile is not committed yet.
- Automated tests: smoke test and focused localization tests are authored. They have not completed successfully in an observed CI run.
- GitHub Actions: workflow executes dependency resolution, formatting, analysis, and tests. Latest run for PR head `3cfaaeb` resolved dependencies successfully but failed at formatting; analyzer and tests were skipped. Formatter output reported five changed Dart files. The cancelled earlier run did not reach dependency resolution.
- Android/iOS builds: none run.
- Device verification: none run.
- Security, performance, and accessibility audits: not performed.
- PR #1 is open; no reviews or review threads were present at the last inspection.

## Important constraints
- Separate from Mobile Foundry at `C:\\afk`.
- Flutter / Dart, iOS and Android.
- go_router and Riverpod.
- No code generation, Freezed, or build_runner.
- AURELIA-owned visual system; Material is infrastructure only.
- Public review is intentional. External feedback is advisory and must be verified before adoption; secrets and private data must never be committed.

## Current work
- Added focused tests for locale support, regional locale resolution, fallback behavior, and English/Arabic copy.
- Added explicit repository rules for public review, AI suggestions, and handling of external feedback.
- CI has exposed formatter drift in five Dart files. This is not yet fixed; no claim of analyzer or test success is made.
- No dependency or runtime behavior changes were introduced in the governance updates.

## Next action
1. Apply and commit the exact Dart formatter output for all affected files.
2. Re-run CI and observe formatter, analyzer, and tests to completion.
3. Commit the resolved dependency lockfile after reviewing its SDK and package constraints.
4. Then generate native host projects using the pinned Flutter SDK and verify Android/iOS builds.

## Evidence rule
Update this file when repository reality changes. Never convert planned work into completed work by changing wording alone.
