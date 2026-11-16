import 'package:flutter/widgets.dart';

import '../../../design_system/aurelia_theme_scope.dart';
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
                      horizontal: constraints.maxWidth < 420 ? 24 : 40,
                      vertical: 32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _BrandMark(label: strings.brand, palette: palette),
                        const SizedBox(height: 88),
                        Text(
                          strings.eyebrow,
                          style: TextStyle(
                            color: palette.mutedForeground,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.7,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Semantics(
                          header: true,
                          child: Text(
                            strings.headline,
                            style: TextStyle(
                              color: palette.foreground,
                              fontSize: constraints.maxWidth < 420 ? 38 : 54,
                              height: 1.08,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -1.8,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 590),
                          child: Text(
                            strings.introduction,
                            style: TextStyle(
                              color: palette.mutedForeground,
                              fontSize: 16,
                              height: 1.75,
                            ),
                          ),
                        ),
                        const SizedBox(height: 48),
                        _FoundationDetails(strings: strings, palette: palette),
                        const SizedBox(height: 24),
                        Text(
                          strings.integrityNote,
                          style: TextStyle(
                            color: palette.mutedForeground,
                            fontSize: 12,
                            height: 1.6,
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
            borderRadius: BorderRadius.circular(10),
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
        const SizedBox(width: 12),
        Text(
          label,
          style: TextStyle(
            color: palette.foreground,
            fontSize: 13,
            fontWeight: FontWeight.w700,
            letterSpacing: 2.2,
          ),
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
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _DetailRow(
              label: strings.platformLabel,
              value: strings.platformValue,
              palette: palette,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
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
          style: TextStyle(
            color: palette.mutedForeground,
            fontSize: 10,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.4,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            color: palette.foreground,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
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
          padding: const EdgeInsets.all(24),
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
