import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:page_test/features/dashboard/routing/dashboard_routes_registrant.dart';

abstract class EwRoutesRegistrant {
  static const List<EwRoutesRegistrant> values = [
    DashboardRoutesRegistrant()
  ];

  const EwRoutesRegistrant();

  RouteBase? get shellRoute => null;

  String? get requiresAuthPath => null;

  List<RouteBase> registerRoutes(GlobalKey<NavigatorState>? root);
}