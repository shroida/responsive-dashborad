import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transaction_view.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transactions_header.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/custom_bg_container.dart';

class CardTransactionsLeft extends StatelessWidget {
  const CardTransactionsLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          MyCardsSection(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          TransactionsHeader(),
          Flexible(
            fit: FlexFit.loose,
            child: TransactionView(),
          ),
        ],
      ),
    );
  }
}
