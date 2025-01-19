import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/latest_transactions_view.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransactionListView()
      ],
    );
  }
}