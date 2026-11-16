import 'package:flutter/widgets.dart';

@immutable
class AureliaPalette {
  const AureliaPalette({
    required this.canvas,
    required this.surface,
    required this.foreground,
    required this.mutedForeground,
    required this.border,
    required this.accent,
  });

  static const light = AureliaPalette(
    canvas: Color(0xFFF5F4F0),
    surface: Color(0xFFFFFFFF),
    foreground: Color(0xFF181818),
    mutedForeground: Color(0xFF74716B),
    border: Color(0xFFE7E5E0),
    accent: Color(0xFF292929),
  );

  static const dark = AureliaPalette(
    canvas: Color(0xFF111111),
    surface: Color(0xFF1C1C1C),
    foreground: Color(0xFFF3F1EC),
    mutedForeground: Color(0xFFA6A39D),
    border: Color(0xFF343434),
    accent: Color(0xFFF3F1EC),
  );

  final Color canvas;
  final Color surface;
  final Color foreground;
  final Color mutedForeground;
  final Color border;
  final Color accent;
}

class AureliaThemeScope extends InheritedWidget {
  const AureliaThemeScope({
    required this.palette,
    required super.child,
    super.key,
  });

  final AureliaPalette palette;

  static AureliaPalette of(BuildContext context) {
    final scope = context
        .dependOnInheritedWidgetOfExactType<AureliaThemeScope>();
    assert(scope != null, 'AureliaThemeScope is missing from the widget tree.');
    return scope!.palette;
  }

  @override
  bool updateShouldNotify(AureliaThemeScope oldWidget) {
    return palette != oldWidget.palette;
  }
}
