import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:page_test/features/dashboard/page/dashboard_page.dart';
import 'package:page_test/routing/ew_routes_registrant.dart';

class DashboardRoutesRegistrant extends EwRoutesRegistrant {
  const DashboardRoutesRegistrant();

  @override
  RouteBase get shellRoute {
    return GoRoute(
      path: DashboardPage.path,
      builder: (_, __) => const DashboardPage(),
    );
  }

  @override
  List<RouteBase> registerRoutes(GlobalKey<NavigatorState>? root) {
    return [];
  }
}