# Project context

## Identity
- Name: AURELIA
- Product: Premium Mobile Engineering Foundation
- Repository: `ReverseMagic0/AURELIA`
- Purpose: a reusable, governed foundation from which multiple independent mobile apps can be built.
- Targets: iOS and Android.
- Primary framework: Flutter / Dart.

## Product intent
AURELIA should make high-quality app delivery repeatable: consistent architecture, visual language, interactions, platform integration, accessibility, localization, reliability, security, and verification. It is not a showcase of abstractions or a kitchen-sink framework.

## Confirmed constraints
- Use go_router and Riverpod.
- No code generation, Freezed, or build_runner.
- Feature-first organization with pragmatic layered boundaries.
- English and Arabic, including correct RTL behavior.
- Light, dark, and system appearance.
- AURELIA-owned design system and components.
- Material is permitted for technical/platform infrastructure; it is not the product's visual identity.
- Premium, restrained monochrome direction is the initial design hypothesis, to be validated in a reference app.
- Build for native iOS and Android behavior, not web/desktop.

## Product boundaries
AURELIA is the reusable foundation, not an individual app. App-specific business rules, branding, and features belong to consuming applications or a clearly scoped reference app. Do not turn AURELIA into a speculative general-purpose framework.

## Decision authority
The user owns final product direction and consequential scope decisions. The engineering partner should make routine technical choices, explain material trade-offs, challenge harmful choices, and avoid burdening the user with optional questions.

## Non-goals unless explicitly approved
- Web and desktop support.
- A universal plugin framework.
- Premature multi-package monorepo decomposition.
- Supporting every possible app domain in the foundation.
- Building backend services or a cloud platform as part of the Flutter foundation.
