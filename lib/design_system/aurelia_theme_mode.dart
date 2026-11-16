import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final aureliaThemeModeProvider =
    NotifierProvider<AureliaThemeModeController, ThemeMode>(
      AureliaThemeModeController.new,
);

class AureliaThemeModeController extends Notifier<ThemeMode> {
  @override
  ThemeMode build() => ThemeMode.system;

  void select(ThemeMode mode) {
    state = mode;
  }
}
