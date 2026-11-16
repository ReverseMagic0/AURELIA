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
go_router and Riverpod are confirmed product constraints. Initial constraints (not yet lockfile-verified): Flutter 3.50.0 / Dart 3.14.0, go_router 18.1.4, flutter_riverpod 3.5.0, and flutter_lints 6.0.0. These were checked against current package metadata on 2026-11-16. The lockfile must be generated, reviewed, and committed before treating the dependency graph as reproducible. Analysis, tests, and platform builds remain required. Code generation is prohibited.
