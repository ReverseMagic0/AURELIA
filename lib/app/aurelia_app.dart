import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../design_system/aurelia_theme_scope.dart';
import '../design_system/aurelia_theme_mode.dart';
import '../design_system/aurelia_tokens.dart';
import '../localization/app_strings.dart';
import 'router/app_router.dart';

class AureliaApp extends ConsumerWidget {
  const AureliaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final themeMode = ref.watch(aureliaThemeModeProvider);

    return WidgetsApp.router(
      title: 'AURELIA',
      color: const Color(0xFF181818),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      supportedLocales: AppStrings.supportedLocales,
      localizationsDelegates: const [
        AppStrings.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeListResolutionCallback: resolveAppLocale,
      builder: (context, child) {
        final brightness = MediaQuery.platformBrightnessOf(context);
        final effectiveBrightness = switch (themeMode) {
          ThemeMode.system => brightness,
          ThemeMode.light => Brightness.light,
          ThemeMode.dark => Brightness.dark,
        };
        final palette = effectiveBrightness == Brightness.dark
            ? AureliaPalette.dark
            : AureliaPalette.light;

        return AureliaThemeScope(
          palette: palette,
          child: DefaultTextStyle(
            style: TextStyle(
              color: palette.foreground,
              fontSize: AureliaTypography.bodyDefault.fontSize,
              height: AureliaTypography.bodyDefault.height,
            ),
            child: child ?? const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}
