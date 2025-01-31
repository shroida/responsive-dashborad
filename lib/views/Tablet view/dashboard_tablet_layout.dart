import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/card_transactions_income.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/all_expensess_invoice_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF7F9FA),
      child: const Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: AllExpensessInvoiceSection(),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(child: CardTransactionsIncome()),
          SizedBox(
            width: 32,
          ),
        ],
      ),
    );
  }
}
