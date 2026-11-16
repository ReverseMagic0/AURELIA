# Security and privacy policy

## Baseline
- Never commit credentials, signing keys, API secrets, personal access tokens, or production data.
- Treat all remote responses, deep links, local imports, and user input as untrusted.
- Validate at trust boundaries and use least privilege.
- Store secrets and authentication material only through an appropriate platform-backed secure-storage design; never hardcode them.
- Minimize collection, retention, and logging of personal data.
- Redact tokens, identifiers, and sensitive payloads from logs and crash reports.
- Use secure transport and platform security defaults. Do not add certificate pinning without a threat model and rotation plan.
- Define backup, deletion, and retention behavior for persisted user data.
- Review permissions for necessity, timing, disclosure, and platform policy compliance.

## Release review
Before production release, assess authentication/session lifecycle, authorization assumptions, local data exposure, transport, deep links, exported components, dependency advisories, privacy disclosures, and platform signing/release configuration.

This policy is a baseline, not a claim of certification or a completed security audit.
