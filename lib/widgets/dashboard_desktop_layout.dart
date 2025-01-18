import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Desktop Layout'),
      ),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/avatar.svg',
          width: 100.0,
          height: 100.0,
        ),
      ),
    );
  }
}
