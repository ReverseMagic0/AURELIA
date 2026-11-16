import 'package:flutter/widgets.dart';

/// Shared design primitives. Components should consume these values rather
/// than introducing local spacing, shape, or type scales.
abstract final class AureliaSpacing {
  static const double x1 = 4;
  static const double x2 = 8;
  static const double x3 = 12;
  static const double x4 = 16;
  static const double x5 = 20;
  static const double x6 = 24;
  static const double x8 = 32;
  static const double x10 = 40;
  static const double x12 = 48;
  static const double x22 = 88;
}

abstract final class AureliaRadii {
  static const double control = 10;
  static const double card = 20;
}

abstract final class AureliaMotion {
  static const Duration pageEnter = Duration(milliseconds: 180);
  static const Duration pageExit = Duration(milliseconds: 140);
}

abstract final class AureliaTypography {
  static const TextStyle displayLarge = TextStyle(
    fontSize: 54,
    height: 1.08,
    fontWeight: FontWeight.w600,
    letterSpacing: -1.8,
  );

  static const TextStyle displayCompact = TextStyle(
    fontSize: 38,
    height: 1.08,
    fontWeight: FontWeight.w600,
    letterSpacing: -1.2,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    height: 1.75,
  );

  static const TextStyle bodyDefault = TextStyle(
    fontSize: 16,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    height: 1.6,
  );

  static const TextStyle eyebrow = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.7,
  );

  static const TextStyle microLabel = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.4,
  );

  static const TextStyle brand = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    letterSpacing: 2.2,
  );

  static const TextStyle detail = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
}
