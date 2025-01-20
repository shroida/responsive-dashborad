import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/card_transactions_left.dart';
import 'package:responsive_dashboard/widgets/Left%20section/income_section.dart';

class CardTransactionsIncome extends StatelessWidget {
  const CardTransactionsIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).width > 1300 ? 40 : 0,
        ),
        const Expanded(flex: 2, child: CardTransactionsLeft()),
        const SizedBox(
          height: 24,
        ),
        const Expanded(child: IncomeSection()),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
