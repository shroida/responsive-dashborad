import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const RangeOptions(),
      ],
    );
  }
}
