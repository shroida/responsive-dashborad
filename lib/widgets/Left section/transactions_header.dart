import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

class TransactionsHeader extends StatelessWidget {
  const TransactionsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0Xff4EB7F2)),
        ),
      ],
    );
  }
}
