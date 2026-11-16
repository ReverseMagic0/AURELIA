import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AureliaThemeMode { system, light, dark }

final aureliaThemeModeProvider =
    NotifierProvider<AureliaThemeModeController, AureliaThemeMode>(
      AureliaThemeModeController.new,
);

class AureliaThemeModeController extends Notifier<AureliaThemeMode> {
  @override
  AureliaThemeMode build() => AureliaThemeMode.system;

  void select(AureliaThemeMode mode) {
    state = mode;
  }
}
