import 'package:aurelia_foundation/design_system/aurelia_tokens.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('design primitives expose one consistent spacing and shape scale', () {
    expect(AureliaSpacing.x2, 8);
    expect(AureliaSpacing.x6, 24);
    expect(AureliaRadii.control, 10);
    expect(AureliaRadii.card, 20);
  });

  test('typography roles retain explicit hierarchy', () {
    expect(AureliaTypography.displayLarge.fontSize, greaterThan(40));
    expect(AureliaTypography.displayCompact.fontSize, lessThan(40));
    expect(AureliaTypography.bodyLarge.height, greaterThan(1));
  });

  test('page motion timings are centrally defined', () {
    expect(AureliaMotion.pageEnter.inMilliseconds, 180);
    expect(AureliaMotion.pageExit.inMilliseconds, 140);
  });
}
