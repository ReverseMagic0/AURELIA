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
- Dependency resolution: passed with Flutter 3.50.0. `pubspec.lock` is committed, and the declared Dart lower bound is aligned to the lockfile's `>=3.13.0` SDK requirement.
- CI evidence: run [#43932025397](https://github.com/ReverseMagic0/AURELIA/actions/runs/43932025397) passed formatting, analysis, tests, and Android debug APK build. The iOS simulator job is queued; it is not yet verified.
- Native Android/iOS host projects: generated with Flutter 3.50.0 and committed (Android Gradle Kotlin DSL + iOS Xcode project).
- Android debug APK: CI build passed. iOS simulator build: job queued, result pending. Physical-device verification is not yet run.
- Security, performance, and accessibility audits: not yet completed.
- PR #1 remains open. External Codex review is advisory and must be independently evaluated before accepting any suggestion.

## Important constraints
- Separate from Mobile Foundry at `C:\afk`.
- Flutter / Dart, iOS and Android.
- go_router and Riverpod.
- No Dart source code generation, Freezed, build_runner, or generated localization. Flutter CLI native-host scaffolding is allowed and reviewed.
- AURELIA-owned visual system; Material is infrastructure only.
- Public review is intentional. External feedback is advisory and must be verified before adoption; secrets and private data must never be committed.

## Current work
- Establishing a verifiable Flutter baseline before adding more design-system surface area.
- Five formatter findings were corrected from SDK-produced output.
- The first complete formatting, analyzer, and test run passed.
- Temporary CI artifact-export steps have been removed; the workflow now contains only dependency resolution, formatting, analysis, and tests.

## Next action
1. Complete verification on the committed lockfile and clean CI workflow.
2. Inspect external review findings and independently validate any proposed changes.
3. Complete the iOS simulator build and retain Android build evidence; then perform platform configuration review.
4. Continue with the design-system foundations only after both native build jobs pass.

## Evidence rule
Update this file when repository reality changes. Never convert planned work into completed work by changing wording alone.
