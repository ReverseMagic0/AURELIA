import 'package:aurelia_foundation/localization/app_strings.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppStrings', () {
    test('supports English and Arabic only', () {
      expect(AppStrings.delegate.isSupported(const Locale('en')), isTrue);
      expect(AppStrings.delegate.isSupported(const Locale('ar')), isTrue);
      expect(AppStrings.delegate.isSupported(const Locale('fr')), isFalse);
    });

    test(
      'resolves a regional Arabic locale to the supported Arabic locale',
      () {
        expect(
          resolveAppLocale(const [
            Locale('ar', 'EG'),
          ], AppStrings.supportedLocales),
          const Locale('ar'),
        );
      },
    );

    test('falls back to the first supported locale when none match', () {
      expect(
        resolveAppLocale(const [
          Locale('fr', 'FR'),
        ], AppStrings.supportedLocales),
        const Locale('en'),
      );
    });

    test('provides distinct English and Arabic foundation copy', () {
      final english = AppStrings(const Locale('en'));
      final arabic = AppStrings(const Locale('ar'));

      expect(english.headline, 'Build on a stronger foundation.');
      expect(arabic.headline, 'ابنِ تطبيقاتك على أساس أقوى.');
      expect(english.introduction, isNotEmpty);
      expect(arabic.introduction, isNotEmpty);
    });
  });
}
