import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../design_system/aurelia_tokens.dart';
import '../../features/foundation/presentation/foundation_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'foundation',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const FoundationScreen(),
          transitionDuration: AureliaMotion.pageEnter,
          reverseTransitionDuration: AureliaMotion.pageExit,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
    ],
    errorBuilder: (context, state) => const RouteErrorScreen(),
  );

  ref.onDispose(router.dispose);
  return router;
});
