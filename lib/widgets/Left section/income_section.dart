import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';
import 'package:responsive_dashboard/widgets/Left%20section/income_chart.dart';
import 'package:responsive_dashboard/widgets/Left%20section/income_details.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/custom_bg_container.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/range_options.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return CustomBackgroundContainer(
      padding: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: AppStyles.styleSemiBold20(context)
                    .copyWith(color: const Color(0xff064061)),
              ),
              const RangeOptions(),
            ],
          ),
          Row(
            children: [
              Flexible(
                flex: screenWidth < 600 ? 2 : 1, // Adjust flex based on screen size
                child: const IncomeChart(),
              ),
              Flexible(
                flex: screenWidth < 600 ? 3 : 2, // Adjust flex based on screen size
                child: const IncomeDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}