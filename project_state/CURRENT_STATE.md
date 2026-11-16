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
- Flutter source scaffold: committed (app shell, router, AURELIA palette scope, manual localization delegate, foundation screen, and shared design-token primitives).
- Dart formatting: corrected in all five files reported by the formatter using the exact Flutter 3.50.0 formatter output.
- Static analysis: passed with `flutter analyze --fatal-infos` after removing one redundant import.
- Automated tests: passed with `flutter test --reporter expanded`; includes app-shell smoke coverage and locale resolution/copy tests.
- Dependency resolution: passed with Flutter 3.50.0. `pubspec.lock` is committed, and the declared Dart lower bound is aligned to the lockfile's `>=3.13.0` SDK requirement.
- CI evidence: run [#43932025397](https://github.com/ReverseMagic0/AURELIA/actions/runs/43932025397) passed formatting, analysis, tests, and Android debug APK build on the pre-token baseline. Latest run [#43933547536](https://github.com/ReverseMagic0/AURELIA/actions/runs/43933547536) is verifying the current head; Android build is in progress, analysis/tests are setting up, and iOS is queued.
- Native Android/iOS host projects: generated with Flutter 3.50.0 and committed (Android Gradle Kotlin DSL + iOS Xcode project).
- Android debug APK: a prior CI build passed; current-head rebuild is in progress. iOS simulator build on current head is queued. Physical-device verification is not yet run.
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
- Establishing a verifiable Flutter baseline and centralizing the first reusable design primitives before expanding the component surface.
- Five formatter findings were corrected from SDK-produced output.
- The first complete formatting, analyzer, and test run passed.
- Temporary CI artifact-export steps have been removed; the workflow now contains only dependency resolution, formatting, analysis, and tests.

## Next action
1. Complete current-head CI verification, including Android and iOS simulator builds.
2. Inspect external review findings and independently validate any proposed changes.
3. Continue the design-system foundations after native build verification.

## Evidence rule
Update this file when repository reality changes. Never convert planned work into completed work by changing wording alone.
