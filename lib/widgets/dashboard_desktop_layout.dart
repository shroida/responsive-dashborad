import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/card_transactions_left.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/all_expensess_invoice_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF7F9FA),
      child: Row(
        children: [
          const Expanded(child: CustomDrawer()),
          const SizedBox(
            width: 32,
          ),
          const Expanded(
            flex: 2,
            child: AllExpensessInvoiceSection(),
          ),
          const SizedBox(
            width: 32,
          ),
          Expanded(child: CardTransactionsLeft()),
          const SizedBox(
            width: 32,
          ),
        ],
      ),
    );
  }
}
