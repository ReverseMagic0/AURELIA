# Current project state

Last updated: 2026-11-16

## Repository
- Repository: `ReverseMagic0/AURELIA`
- Default branch: `main`
- Working branch: `foundation/phase-01-quality-baseline`
- Visibility: intentionally public to enable external AI and human review. This is a deliberate product decision, not a configuration mistake.

## Delivery status
- Repository identity and scope: recorded.
- Engineering and AI governance: initial baseline committed; public-review handling and AI contribution rules are explicit.
- Flutter source scaffold: committed (app shell, router, AURELIA palette scope, manual localization delegate, and foundation screen).
- Dart formatting: corrected in all five files reported by the formatter using the exact Flutter 3.50.0 formatter output.
- Static analysis: passed with `flutter analyze --fatal-infos` after removing one redundant import.
- Automated tests: passed with `flutter test --reporter expanded`; includes app-shell smoke coverage and locale resolution/copy tests.
- Dependency resolution: passed with Flutter 3.50.0. The resolved lockfile is being committed, and the declared Dart lower bound is aligned to the lockfile's `>=3.13.0` SDK requirement.
- CI evidence: GitHub Actions run [#43927003923](https://github.com/ReverseMagic0/AURELIA/actions/runs/43927003923) completed successfully for the pre-lockfile-remediation commit. A clean-workflow rerun is required after the lockfile and final workflow cleanup.
- Native Android/iOS host projects: not yet committed.
- Android/iOS builds and physical/simulator device verification: not run.
- Security, performance, and accessibility audits: not yet completed.
- PR #1 remains open; external Codex review is advisory and is not treated as accepted without verification.

## Important constraints
- Separate from Mobile Foundry at `C:\afk`.
- Flutter / Dart, iOS and Android.
- go_router and Riverpod.
- No code generation, Freezed, or build_runner.
- AURELIA-owned visual system; Material is infrastructure only.
- Public review is intentional. External feedback is advisory and must be verified before adoption; secrets and private data must never be committed.

## Current work
- Establishing a verifiable Flutter baseline before adding more design-system surface area.
- Five formatter findings were corrected from SDK-produced output.
- The first complete formatting, analyzer, and test run passed.
- A temporary CI artifact-export step is being removed now that the dependency lockfile has been captured.

## Next action
1. Commit the resolved lockfile and remove temporary CI export steps.
2. Re-run the clean CI workflow and inspect any external review findings.
3. Generate Android/iOS host projects using the pinned Flutter SDK, then verify platform builds.
4. Continue with the design-system foundations only after the platform and localization baseline is stable.

## Evidence rule
Update this file when repository reality changes. Never convert planned work into completed work by changing wording alone.
