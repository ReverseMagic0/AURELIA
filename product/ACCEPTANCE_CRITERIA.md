# Acceptance criteria

AURELIA is not production-ready until the relevant criteria below are evidenced. Criteria may be marked not applicable only with a recorded reason.

## Foundation
- [ ] A clean checkout resolves dependencies on the documented Flutter stable toolchain.
- [ ] iOS and Android builds succeed on supported environments.
- [ ] Bootstrap, configuration, routing, and dependency composition have one clear owner.
- [ ] No code generation or prohibited generator dependency is required.

## Architecture
- [ ] Dependency direction is documented and enforced where practical.
- [ ] Domain logic does not depend on UI, routing, or infrastructure SDKs.
- [ ] No unexplained circular dependencies, duplicate state owners, or dead code.
- [ ] Abstractions have a demonstrated use and documented responsibility.

## Design and experience
- [ ] Tokens and component contracts are centralized.
- [ ] Light, dark, English, Arabic, RTL, and text scaling are reviewed.
- [ ] Components expose and correctly render relevant interaction and failure states.
- [ ] Motion respects reduced-motion preferences and does not block interaction.
- [ ] The visual system is validated in a real reference application.

## Reliability and security
- [ ] Async operations have loading, success, empty, and failure behavior as relevant.
- [ ] Lifecycle, cancellation, retry, and duplicate-action behavior are handled where relevant.
- [ ] Secrets and sensitive data are not embedded or logged.
- [ ] Persistence has an explicit schema/version and migration strategy before user data ships.

## Verification
- [ ] Formatting and static analysis pass.
- [ ] Relevant unit, widget, integration, and visual tests pass.
- [ ] Accessibility checks are completed on representative platform configurations.
- [ ] Performance is measured in profile/release mode on representative devices.
- [ ] All claims in release notes match executed evidence.
