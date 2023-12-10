import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_test/features/dashboard/routing/dashboard_routes_registrant.dart';
import 'package:page_test/features/home/pages/home_page.dart';
import 'package:page_test/routing/ew_routes_registrant.dart';

class EwRouterFactory {
  final GlobalKey<NavigatorState> _rootKey;
  final List<EwRoutesRegistrant> _registrants;

  EwRouterFactory({
    GlobalKey<NavigatorState>? rootKey,
    List<EwRoutesRegistrant>? registrants,
  })  : _rootKey = rootKey ?? GlobalKey<NavigatorState>(),
        _registrants = registrants ??
            [
              const DashboardRoutesRegistrant()
            ];

  GoRouter create({
    required String initialPath,
    bool showLogs = false,
  }) {
    if (_registrants.isEmpty) {
      throw ArgumentError("The list of registrants cannot be empty.");
    }

    return GoRouter(
      initialLocation: initialPath,
      debugLogDiagnostics: showLogs,
      navigatorKey: _rootKey,
      redirect: _redirect,
      routes: _buildRoutes(),
    );
  }

  List<RouteBase> _buildRoutes() {
    List<RouteBase> routes = [];

    for (final registrant in _registrants) {
      routes.addAll(registrant.registerRoutes(_rootKey) ?? []);
    }

    if (_registrants.any((registrant) => registrant.shellRoute != null)) {
      routes.add(
        ShellRoute(
          routes: _registrants
              .map((registrant) => registrant.shellRoute)
              .whereType<RouteBase>()
              .toList(),
          pageBuilder: (context, state, child) {
            return NoTransitionPage(
              child: HomePage(
                location: state.matchedLocation,
                child: child,
              ),
            );
          },
        ),
      );
    }
    return routes;
  }

  Future<String?> _redirect(BuildContext context, GoRouterState state) async {
    final path = state.matchedLocation;
    final requiresAuth = _registrants.any((registrant) {
      final requiresAuthPath = registrant.requiresAuthPath;
      return requiresAuthPath != null && path.startsWith(requiresAuthPath);
    });
    if (path.contains('local_files') || !requiresAuth) {
      return null;
    }
    return null;
  }
}