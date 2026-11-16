import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AppStrings {
  const AppStrings(this.locale);

  final Locale locale;

  static const supportedLocales = <Locale>[Locale('en'), Locale('ar')];

  static const LocalizationsDelegate<AppStrings> delegate =
      _AppStringsDelegate();

  static AppStrings of(BuildContext context) {
    final strings = Localizations.of<AppStrings>(context, AppStrings);
    assert(strings != null, 'AppStrings delegate is missing.');
    return strings!;
  }

  bool get isArabic => locale.languageCode == 'ar';

  String get brand => 'AURELIA';

  String get eyebrow => isArabic
      ? 'أساس هندسي لتطبيقات الهاتف'
      : 'THE MOBILE ENGINEERING FOUNDATION';

  String get headline => isArabic
      ? 'ابنِ تطبيقاتك على أساس أقوى.'
      : 'Build on a stronger foundation.';

  String get introduction => isArabic
      ? 'نظام Flutter منظم لبناء تجارب مميزة على iOS وAndroid، مع اهتمام بالاتساق والجودة والسلوك الأصلي لكل منصة.'
      : 'A governed Flutter foundation for distinctive iOS and Android experiences, designed around consistency, quality, and native platform behavior.';

  String get platformLabel =>
      isArabic ? 'المنصات المستهدفة' : 'TARGET PLATFORMS';

  String get platformValue => 'iOS  ·  Android';

  String get architectureLabel =>
      isArabic ? 'أساسيات الهندسة' : 'ENGINEERING BASELINE';

  String get architectureValue => isArabic
      ? 'معمارية واضحة · حالة مركزية'
      : 'Clear architecture · Owned state';

  String get integrityNote => isArabic
      ? 'لا توجد بيانات تجريبية أو وظائف وهمية في هذا العرض.'
      : 'No sample records or simulated product features are presented here.';

  String get routeError =>
      isArabic ? 'تعذر فتح هذه الصفحة.' : 'This page could not be opened.';
}

Locale resolveAppLocale(
  List<Locale>? preferredLocales,
  Iterable<Locale> supportedLocales,
) {
  for (final preferred in preferredLocales ?? const <Locale>[]) {
    for (final supported in supportedLocales) {
      if (preferred.languageCode == supported.languageCode) {
        return supported;
      }
    }
  }

  return supportedLocales.first;
}

class _AppStringsDelegate extends LocalizationsDelegate<AppStrings> {
  const _AppStringsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppStrings.supportedLocales.any(
      (supported) => supported.languageCode == locale.languageCode,
    );
  }

  @override
  Future<AppStrings> load(Locale locale) {
    return SynchronousFuture<AppStrings>(AppStrings(locale));
  }

  @override
  bool shouldReload(_AppStringsDelegate old) => false;
}
