import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/income_header.dart';
import 'package:responsive_dashboard/widgets/Left%20section/income_section_body.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/custom_bg_container.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomBackgroundContainer(
      padding: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IncomeHeader(),
          IncomSectionBody()
        ],
      ),
    );
  }
}
