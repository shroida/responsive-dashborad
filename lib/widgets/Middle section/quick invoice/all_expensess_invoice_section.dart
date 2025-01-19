import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/all_expensess.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/custom_button.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/quick_invoice.dart';

class AllExpensessInvoiceSection extends StatelessWidget {
  const AllExpensessInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AllExpenses(),
        QuickInvoice(),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                bgColor: Colors.transparent,
                textColor: Color(0xff4db7f2),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton()),
          ],
        )
      ],
    );
  }
}
