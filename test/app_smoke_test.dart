import 'package:aurelia_foundation/app/aurelia_app.dart';
import 'package:aurelia_foundation/design_system/aurelia_theme_scope.dart';
import 'package:aurelia_foundation/features/foundation/presentation/foundation_screen.dart';
import 'package:aurelia_foundation/localization/app_strings.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('locale resolution selects a supported language', () {
    final resolved = resolveAppLocale(const [
      Locale('ar', 'EG'),
      Locale('en', 'US'),
    ], AppStrings.supportedLocales);

    expect(resolved, const Locale('ar'));
  });

  testWidgets('foundation shell renders its real baseline', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: AureliaApp()));
    await tester.pumpAndSettle();

    expect(find.text('AURELIA'), findsOneWidget);
    expect(find.text('iOS  ·  Android'), findsOneWidget);
    expect(
      find.text(
        'No sample records or simulated product features are presented here.',
      ),
      findsOneWidget,
    );
  });
  testWidgets('appearance control switches the active palette', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: AureliaApp()));
    await tester.pumpAndSettle();

    expect(
      AureliaThemeScope.of(tester.element(find.byType(FoundationScreen))).canvas,
      AureliaPalette.light.canvas,
    );

    await tester.tap(find.text('Dark'));
    await tester.pumpAndSettle();

    expect(
      AureliaThemeScope.of(tester.element(find.byType(FoundationScreen))).canvas,
      AureliaPalette.dark.canvas,
    );
  });

}
