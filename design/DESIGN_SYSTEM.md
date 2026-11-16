# Design-system specification

## Ownership
AURELIA owns its visual language, semantic tokens, typography, component APIs, interaction states, and visual regression baselines. Material is allowed as technical infrastructure where justified, but default Material styling must not define the product identity.

## Initial visual hypothesis
A restrained premium monochrome palette: warm white/ivory, neutral mist and stone, graphite, charcoal, and near-black. This is a direction to validate in a real reference app, not permission to scatter literal color values.

## Required foundations
- Semantic color roles for backgrounds, surfaces, content, borders, actions, and status.
- Typography roles with Arabic and Latin font evaluation, line-height, weight, and scaling rules.
- Spacing and sizing scales with documented exceptions.
- Shape, border, elevation, and overlay rules.
- Icon style and sizing conventions.
- Layout, safe-area, and density guidance.
- Light/dark semantic mappings.

## Component contract
Every reusable component must document purpose, API, variants, states, interaction behavior, semantics/accessibility, localization/RTL behavior, motion, and tests. Do not create a component solely to wrap another widget without adding a meaningful contract.

## Governance
Prefer semantic tokens over raw literals in reusable UI. A one-off value is acceptable when local, intentional, and not a repeated design decision. Changes to public tokens or component contracts require impact review and migration notes when breaking.
