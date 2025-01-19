import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/all_expensess_invoice_section.dart';

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
            child: AllExpensessInvoiceSection(),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(child: MyCardsSection()),
          SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
