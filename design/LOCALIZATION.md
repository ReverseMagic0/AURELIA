# Localization and directionality

## Confirmed languages
English (LTR) and Arabic (RTL).

## Implementation constraints
- No generated localization code or build_runner.
- Use a typed, manually maintained localization API and centralized dictionaries.
- Validate translation-key parity in automated checks.
- Support interpolation, plural categories, dates, numbers, and currency formatting.
- Persist explicit user choice; define behavior for system locale changes.
- Derive text direction from the active locale, while allowing intentional directional exceptions for identifiers and numeric content.
- Mirror directional layout affordances where appropriate; do not blindly mirror brand marks or all icons.
- Test Arabic shaping, line height, truncation, mixed-direction text, and accessibility labels.

Do not scatter user-facing strings through widgets or use machine-translated placeholders as final copy.
