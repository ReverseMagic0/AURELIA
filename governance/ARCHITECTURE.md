# Architecture

## Architectural intent
Use feature-first organization with pragmatic layering. Architecture exists to isolate change and protect business rules, not to maximize indirection.

## Proposed dependency direction
Presentation -> application orchestration -> domain contracts/rules.
Infrastructure implements contracts and is composed at the application boundary.
Domain must not depend on Flutter widgets, Riverpod, routing, storage SDKs, or network clients.

## Initial application shape
```
lib/
  main.dart
  bootstrap/
  app/
    routing/
    lifecycle/
  core/
    errors/
    logging/
    platform/
  design_system/
    tokens/
    theme/
    components/
    motion/
  localization/
  features/
    <feature>/
      presentation/
      application/
      domain/
      data/
```

Create a layer only when a feature has a real need for it. A small feature may use fewer layers. Do not create empty directories or interfaces that have no second implementation or meaningful boundary.

## Rules
- Widgets render state and dispatch user intent; they do not own domain workflows or infrastructure calls.
- Domain rules are framework-independent where practical.
- Riverpod providers compose dependencies and expose state; they are not a dumping ground for all logic.
- go_router configuration and route identifiers have one owner.
- Feature-to-feature imports are prohibited by default. Shared behavior belongs in a genuinely shared core contract or is coordinated at the application layer.
- Avoid service locators, global mutable state, hidden singletons, and circular dependencies.
- Models at trust boundaries validate or normalize external data before domain use.
- Errors are represented at the boundary where they can be handled meaningfully; do not build duplicate error hierarchies that merely wrap Riverpod's AsyncValue without a use case.
- Platform-specific code is isolated behind small adapters only when the behavior genuinely differs.

## State ownership
Each piece of state has one owner and a defined lifetime. Distinguish ephemeral widget state, feature state, persisted user preferences, and server-authoritative state. Avoid mirroring the same state in multiple providers or local variables.

## Architecture evolution
Start as one Flutter application package. Split packages only when independent reuse, ownership, build isolation, or dependency constraints demonstrate a concrete benefit. Record material boundary changes as ADRs.
