import 'package:aurelia_foundation/design_system/aurelia_theme_mode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'system appearance is the default and explicit choices are reactive',
    () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      expect(container.read(aureliaThemeModeProvider), AureliaThemeMode.system);

      final controller = container.read(aureliaThemeModeProvider.notifier);
      controller.select(AureliaThemeMode.dark);
      expect(container.read(aureliaThemeModeProvider), AureliaThemeMode.dark);

      controller.select(AureliaThemeMode.light);
      expect(container.read(aureliaThemeModeProvider), AureliaThemeMode.light);
    },
  );
}
