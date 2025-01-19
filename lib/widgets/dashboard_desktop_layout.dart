import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all%20expensess/all_expensess.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/custom_button.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF7F9FA),
      child: const Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
                QuickInvoice(),
                CustomButton()
              ],
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
