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
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        SizedBox(
          height: screenWidth < 1300 ? 0 : 40,
        ),
        const AllExpenses(),
        SizedBox(
          height: screenWidth < 1300 ? 10 : 24,
        ),
        const QuickInvoice(),
        Row(
          children: [
            const Expanded(
              child: CustomButton(
                bgColor: Colors.transparent,
                textColor: Color(0xff4db7f2),
              ),
            ),
            SizedBox(
              width: screenWidth < 1300 ? 10 : 24,
            ),
            const Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
