import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all%20expensess/all_expensess.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Row(children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 3,
        ),
        Expanded(
          flex: 2,
          child: Expanded(
            child: Column(
              children: [
                AllExpenses(),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(),
        )
      ]),
    );
  }
}
