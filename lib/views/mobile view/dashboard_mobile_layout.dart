import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/income_section.dart';
import 'package:responsive_dashboard/widgets/Left%20section/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/all_expensess_invoice_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            AllExpensessInvoiceSection(),
            SizedBox(
              height: 24,
            ),
            MyCardsSection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}