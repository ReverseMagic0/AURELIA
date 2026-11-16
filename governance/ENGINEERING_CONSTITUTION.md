# Engineering constitution

This is the governing set of engineering principles. Detailed implementation guidance belongs in the relevant policy documents.

## 1. Product before machinery
Every abstraction and dependency must serve a real user or engineering outcome. Prefer a small working system over a large theoretical one.

## 2. Clarity over cleverness
Code should be understandable by a capable engineer unfamiliar with its history. Prefer explicit names, visible data flow, simple control flow, and local reasoning.

## 3. One source of truth
A value, policy, state, or decision has one authoritative owner. Derived values are computed; they are not independently maintained copies.

## 4. Explicit boundaries
UI, application orchestration, domain rules, infrastructure, and platform integration have clear responsibilities. Boundaries must reduce coupling, not merely add folders.

## 5. Correctness before convenience
Validate external input, model failure, preserve data integrity, and make asynchronous behavior and lifecycle ownership explicit.

## 6. Design is a system
Tokens, typography, spacing, components, motion, interaction states, accessibility, and localization are governed consistently. Visual consistency is not achieved by copying arbitrary values.

## 7. Native behavior is intentional
Respect iOS and Android conventions where they improve usability. Platform differences are isolated behind purposeful adapters, not scattered conditionals.

## 8. Quality is evidenced
Tests, static analysis, device verification, performance measurements, and security review are reported only when actually performed. Coverage percentage alone is not proof of quality.

## 9. Dependencies are liabilities
Every dependency adds update, security, compatibility, size, and maintenance cost. Add only when its value exceeds its lifecycle cost.

## 10. Change is managed
Public APIs, persisted data, routing, design tokens, and platform contracts evolve deliberately. Breaking changes require migration notes and appropriate tests.

## 11. AI is accountable
AI-generated code has no exemption from engineering standards. No fabricated APIs, unexplained bulk, fake completeness, hidden placeholders, or claims unsupported by evidence.

## 12. Simplicity is continuously maintained
Remove dead code, redundant configuration, unnecessary indirection, stale docs, and unused dependencies. Do not preserve complexity merely because it has already been written.

## Review question
Can a simpler implementation meet the requirement with equal correctness, clarity, safety, and maintainability? If yes, choose it.
