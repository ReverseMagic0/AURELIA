# Dependency policy

A dependency is approved only when it solves a demonstrated need better than a reasonable first-party or smaller alternative.

## Evaluation checklist
- Is it necessary for the current scope?
- Is it compatible with the selected Flutter and Dart SDKs and target platforms?
- Is it actively maintained with a credible release and issue history?
- Is its license acceptable and clearly identified?
- Are security advisories and transitive dependencies understood?
- What are its binary-size, startup, runtime, and build-time costs?
- Does it introduce code generation, native setup, privacy collection, or lifecycle complexity?
- Is there a migration or exit path if it becomes unmaintained?

## Rules
- Pin compatible versions through the package manifest and lockfile for application builds.
- Commit the lockfile for the app.
- Avoid broad dependency additions and overlapping packages.
- Prefer Flutter/Dart SDK capabilities when they satisfy the requirement.
- Do not use unmaintained packages merely because a tutorial recommends them.
- Do not claim a package is secure or maintained without checking current evidence.
- Re-evaluate dependencies during upgrades and before release.

## Baseline choices
go_router and Riverpod are confirmed product constraints. Exact compatible versions must be selected against the Flutter stable SDK and verified by dependency resolution, analysis, tests, and platform builds. Code generation is prohibited.
