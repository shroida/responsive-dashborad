import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          height: 8,
        ),
        
      
      
      ]),
    );
  }
}
