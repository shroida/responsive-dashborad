import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Tablet%20view/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/views/mobile%20view/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: screenWidth < 1300
          ? AppBar(
              title: const Text('Dashboard'),
              backgroundColor: const Color(0xfff7f9fa),
            )
          : null,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
