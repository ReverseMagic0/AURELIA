import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../design_system/aurelia_theme_mode.dart';
import '../../../design_system/aurelia_theme_scope.dart';
import '../../../design_system/aurelia_tokens.dart';
import '../../../localization/app_strings.dart';

class FoundationScreen extends StatelessWidget {
  const FoundationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    final palette = AureliaThemeScope.of(context);

    return ColoredBox(
      color: palette.canvas,
      child: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 760),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth < 420
                          ? AureliaSpacing.x6
                          : AureliaSpacing.x10,
                      vertical: AureliaSpacing.x8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _BrandMark(label: strings.brand, palette: palette),
                        const SizedBox(height: AureliaSpacing.x6),
                        _AppearanceControl(strings: strings, palette: palette),
                        const SizedBox(height: AureliaSpacing.hero),
                        Text(
                          strings.eyebrow,
                          style: AureliaTypography.eyebrow.copyWith(
                            color: palette.mutedForeground,
                          ),
                        ),
                        const SizedBox(height: AureliaSpacing.x5),
                        Semantics(
                          header: true,
                          child: Text(
                            strings.headline,
                            style:
                                (constraints.maxWidth < 420
                                        ? AureliaTypography.displayCompact
                                        : AureliaTypography.displayLarge)
                                    .copyWith(color: palette.foreground),
                          ),
                        ),
                        const SizedBox(height: AureliaSpacing.x5),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 590),
                          child: Text(
                            strings.introduction,
                            style: AureliaTypography.bodyLarge.copyWith(
                              color: palette.mutedForeground,
                            ),
                          ),
                        ),
                        const SizedBox(height: AureliaSpacing.x12),
                        _FoundationDetails(strings: strings, palette: palette),
                        const SizedBox(height: AureliaSpacing.x6),
                        Text(
                          strings.integrityNote,
                          style: AureliaTypography.bodySmall.copyWith(
                            color: palette.mutedForeground,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _AppearanceControl extends ConsumerWidget {
  const _AppearanceControl({required this.strings, required this.palette});

  final AppStrings strings;
  final AureliaPalette palette;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedMode = ref.watch(aureliaThemeModeProvider);
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    final options = [
      (mode: AureliaThemeMode.system, label: strings.appearanceSystem),
      (mode: AureliaThemeMode.light, label: strings.appearanceLight),
      (mode: AureliaThemeMode.dark, label: strings.appearanceDark),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          strings.appearanceLabel,
          style: AureliaTypography.microLabel.copyWith(
            color: palette.mutedForeground,
          ),
        ),
        const SizedBox(height: AureliaSpacing.x2),
        Wrap(
          spacing: AureliaSpacing.x2,
          children: [
            for (final option in options)
              _AppearanceOption(
                label: option.label,
                selected: selectedMode == option.mode,
                palette: palette,
                reduceMotion: reduceMotion,
                onSelected: () => ref
                    .read(aureliaThemeModeProvider.notifier)
                    .select(option.mode),
              ),
          ],
        ),
      ],
    );
  }
}

class _AppearanceOption extends StatefulWidget {
  const _AppearanceOption({
    required this.label,
    required this.selected,
    required this.palette,
    required this.reduceMotion,
    required this.onSelected,
  });

  final String label;
  final bool selected;
  final AureliaPalette palette;
  final bool reduceMotion;
  final VoidCallback onSelected;

  @override
  State<_AppearanceOption> createState() => _AppearanceOptionState();
}

class _AppearanceOptionState extends State<_AppearanceOption> {
  bool _showFocusHighlight = false;

  void _activate() {
    widget.onSelected();
  }

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      mouseCursor: SystemMouseCursors.click,
      shortcuts: const <ShortcutActivator, Intent>{
        SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.space): ActivateIntent(),
      },
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (_) {
            _activate();
            return null;
          },
        ),
      },
      onShowFocusHighlight: (show) {
        if (_showFocusHighlight != show) {
          setState(() => _showFocusHighlight = show);
        }
      },
      child: Semantics(
        button: true,
        selected: widget.selected,
        label: widget.label,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _activate,
          child: AnimatedContainer(
            duration: widget.reduceMotion
                ? Duration.zero
                : AureliaMotion.pageEnter,
            constraints: const BoxConstraints(minHeight: 44),
            padding: const EdgeInsets.symmetric(
              horizontal: AureliaSpacing.x4,
              vertical: AureliaSpacing.x2,
            ),
            decoration: BoxDecoration(
              color: widget.selected
                  ? widget.palette.foreground
                  : widget.palette.surface,
              border: Border.all(
                color: _showFocusHighlight
                    ? (widget.selected
                          ? widget.palette.surface
                          : widget.palette.accent)
                    : widget.palette.border,
                width: _showFocusHighlight ? 2 : 1,
              ),
              borderRadius: BorderRadius.circular(AureliaRadii.control),
            ),
            child: Text(
              widget.label,
              style: AureliaTypography.detail.copyWith(
                color: widget.selected
                    ? widget.palette.canvas
                    : widget.palette.foreground,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BrandMark extends StatelessWidget {
  const _BrandMark({required this.label, required this.palette});

  final String label;
  final AureliaPalette palette;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: palette.foreground,
            borderRadius: BorderRadius.circular(AureliaRadii.control),
          ),
          child: SizedBox(
            width: 36,
            height: 36,
            child: Center(
              child: Text(
                'A',
                style: TextStyle(
                  color: palette.canvas,
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: AureliaSpacing.x3),
        Text(
          label,
          style: AureliaTypography.brand.copyWith(color: palette.foreground),
        ),
      ],
    );
  }
}

class _FoundationDetails extends StatelessWidget {
  const _FoundationDetails({required this.strings, required this.palette});

  final AppStrings strings;
  final AureliaPalette palette;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: palette.surface,
        border: Border.all(color: palette.border),
        borderRadius: BorderRadius.circular(AureliaRadii.card),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AureliaSpacing.x6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _DetailRow(
              label: strings.platformLabel,
              value: strings.platformValue,
              palette: palette,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AureliaSpacing.x5),
              child: SizedBox(
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: palette.border),
                ),
              ),
            ),
            _DetailRow(
              label: strings.architectureLabel,
              value: strings.architectureValue,
              palette: palette,
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.label,
    required this.value,
    required this.palette,
  });

  final String label;
  final String value;
  final AureliaPalette palette;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AureliaTypography.microLabel.copyWith(
            color: palette.mutedForeground,
          ),
        ),
        const SizedBox(height: AureliaSpacing.x2),
        Text(
          value,
          style: AureliaTypography.detail.copyWith(color: palette.foreground),
        ),
      ],
    );
  }
}

class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    final palette = AureliaThemeScope.of(context);

    return ColoredBox(
      color: palette.canvas,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AureliaSpacing.x6),
          child: Text(
            strings.routeError,
            textAlign: TextAlign.center,
            style: TextStyle(color: palette.foreground, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
