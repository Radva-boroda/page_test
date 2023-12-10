import 'package:flutter/material.dart';
import 'package:page_test/common/theme/image_constants.dart';
import 'package:page_test/common/widgets/ev_naw_bar.dart';
import 'package:page_test/features/dashboard/page/dashboard_page.dart';

class HomePage extends StatelessWidget {
  static const String path = DashboardPage.path;

  final String location;
  final Widget child;

  const HomePage({
    Key? key,
    required this.location,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: EwNavBar(
        location: location,
        dashboard: const EwNavBarTab('Dashboard', ImageConstants.dashboard, DashboardPage.path),
        jobMarket: const EwNavBarTab('Job Market', ImageConstants.jobMarket, ''),
        add: const EwNavBarTab('', ImageConstants.add, '') ,
        calendar:  const EwNavBarTab('Calendar', ImageConstants.calendar, ''),
          massages:  const EwNavBarTab('Messages', ImageConstants.massages, ''),
        textAlign: TextAlign.center
      ),
      body: child,
    );
  }
}