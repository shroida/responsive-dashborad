import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transactions_details.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transactions_header.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transactions_list.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/custom_bg_container.dart';

class CardTransactionsLeft extends StatelessWidget {
  CardTransactionsLeft({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const MyCardsSection(),
          const Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          const TransactionsHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: transactions.map((transaction) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: TransactionsDetails(transactionsModel: transaction),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
