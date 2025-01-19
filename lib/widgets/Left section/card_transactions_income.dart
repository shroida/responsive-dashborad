import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/card_transactions_left.dart';
import 'package:responsive_dashboard/widgets/Left%20section/income_section.dart';

class CardTransactionsIncome extends StatelessWidget {
  const CardTransactionsIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CardTransactionsLeft()),
        SizedBox(
          height: 24,
        ),
        Expanded(child: IncomeSection()),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
