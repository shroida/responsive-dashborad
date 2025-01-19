import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transactions_model.dart';
import 'package:responsive_dashboard/widgets/Left%20section/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transactions_details.dart';
import 'package:responsive_dashboard/widgets/Left%20section/transactions_header.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/custom_bg_container.dart';

class CardTransactionsLeft extends StatelessWidget {
  CardTransactionsLeft({super.key});

  final List<TransactionsModel> transactions = [
    TransactionsModel(
      title: 'Groceries',
      date: '2025-01-15',
      amount: '\$54.99',
    ),
    TransactionsModel(
      title: 'Electricity Bill',
      date: '2025-01-10',
      amount: '\$120.75',
    ),
    TransactionsModel(
      title: 'Netflix Subscription',
      date: '2025-01-01',
      amount: '\$15.99',
    ),
    TransactionsModel(
      title: 'Gym Membership',
      date: '2025-01-05',
      amount: '\$40.00',
    ),
    TransactionsModel(
      title: 'Restaurant Dinner',
      date: '2025-01-12',
      amount: '\$89.50',
    ),
    TransactionsModel(
      title: 'Car Fuel',
      date: '2025-01-08',
      amount: '\$35.60',
    ),
    TransactionsModel(
      title: 'Book Purchase',
      date: '2025-01-18',
      amount: '\$24.90',
    ),
    TransactionsModel(
      title: 'Online Course',
      date: '2025-01-20',
      amount: '\$199.00',
    ),
    TransactionsModel(
      title: 'Coffee Shop',
      date: '2025-01-14',
      amount: '\$7.45',
    ),
    TransactionsModel(
      title: 'Monthly Rent',
      date: '2025-01-01',
      amount: '\$1200.00',
    ),
  ];

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
