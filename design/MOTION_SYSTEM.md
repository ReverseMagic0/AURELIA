# Motion system

Motion exists to communicate state, preserve spatial continuity, and provide interaction feedback. It is not decoration by default.

## Requirements
- Centralize reusable duration and curve decisions after validating them in context.
- Define interaction, component, navigation, layout, and feedback motion separately where useful.
- Respect platform reduced-motion settings and provide a reduced or non-animated alternative.
- Do not block input while decorative motion runs.
- Own and dispose animation controllers correctly.
- Avoid expensive layout/paint work and unnecessary simultaneous animations.
- Validate perceived quality on real devices and high-refresh-rate displays.

Do not impose a universal duration or animation on every transition. Choose based on task, distance, hierarchy, and measured behavior.
