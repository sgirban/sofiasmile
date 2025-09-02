import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofiasmile/core/value_objects/navigator_keys.dart'
    show appRootNavigatorKey, appShellNavigatorKey;
import 'package:sofiasmile/core/widgets/navigation_shell.dart';

final router = GoRouter(
  navigatorKey: appRootNavigatorKey,
  routes: [
    // Here are the application shell route (main route)
    ShellRoute(
      navigatorKey: appShellNavigatorKey,
      builder: (context, state, child) {
        return NavigationShell(
          shellContext: appShellNavigatorKey.currentContext,
          child: child,
        );
      },
      routes: [
        // Here we place the application main routes
        // Home
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const Placeholder();
          },
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) {
            return Container(color: const Color(0xffffbb00));
          },
        ),
      ],
    ),
  ],
);
