import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transactions_details.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transactions_list.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: transactions.map((transaction) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: TransactionsDetails(transactionsModel: transaction),
          );
        }).toList(),
      ),
    );
  }
}
