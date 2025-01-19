import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/custom_bg_container.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/range_options.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Prevents the column from expanding
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: AppStyles.styleSemiBold20(context)
                    .copyWith(color: const Color(0xff064061)),
              ),
              const RangeOptions()
            ],
          ),
        ],
      ),
    );
  }
}
