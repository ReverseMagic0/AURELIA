import 'package:aurelia_foundation/design_system/aurelia_theme_scope.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

double contrastRatio(Color foreground, Color background) {
  final foregroundLuminance = foreground.computeLuminance();
  final backgroundLuminance = background.computeLuminance();
  final lighter = foregroundLuminance > backgroundLuminance
      ? foregroundLuminance
      : backgroundLuminance;
  final darker = foregroundLuminance > backgroundLuminance
      ? backgroundLuminance
      : foregroundLuminance;

  return (lighter + 0.05) / (darker + 0.05);
}

void main() {
  test('body text colors meet WCAG AA contrast on primary surfaces', () {
    for (final palette in [AureliaPalette.light, AureliaPalette.dark]) {
      for (final surface in [palette.canvas, palette.surface]) {
        expect(
          contrastRatio(palette.foreground, surface),
          greaterThanOrEqualTo(4.5),
        );
        expect(
          contrastRatio(palette.mutedForeground, surface),
          greaterThanOrEqualTo(4.5),
        );
      }
    }
  });
}
