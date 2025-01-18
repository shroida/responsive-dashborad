import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Desktop Layout'),
      ),
      body: Center(
        child: SvgPicture.asset(
          Assets.imagesIncome,
          width: 1000.0,
          height: 1000.0,
        ),
      ),
    );
  }
}
