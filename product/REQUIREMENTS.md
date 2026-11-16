# Product requirements

This document records confirmed baseline requirements. Detailed policies live in `governance/` and `design/`.

## Platform and stack
- Flutter and Dart.
- iOS and Android targets only.
- go_router for navigation.
- Riverpod for state and dependency composition.
- No code generation, Freezed, or build_runner.

## Architecture
- Feature-first organization.
- Pragmatic layering with framework-independent domain logic where useful.
- Explicit dependency direction and state ownership.
- Centralized app composition and route definitions.

## Experience
- AURELIA-owned design system and component contracts.
- Material may be used for infrastructure and platform behavior, not as the final visual identity.
- Premium, restrained monochrome visual direction as a starting hypothesis.
- Purposeful motion and interaction feedback.
- Native-feeling navigation, keyboard, safe areas, system bars, and lifecycle behavior.

## Localization and appearance
- English and Arabic.
- Correct RTL/LTR direction and mirrored layout behavior where appropriate.
- Light, dark, and system appearance.
- No user-facing hardcoded strings outside the localization source.

## Quality
- Static analysis, meaningful automated tests, visual review, accessibility, security, and performance validation.
- No fake production functionality or unlabelled placeholders.
- Project state and decision records remain accurate.
