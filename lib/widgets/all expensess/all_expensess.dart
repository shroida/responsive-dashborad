import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all%20expensess/all_expensess_header.dart';
import 'package:responsive_dashboard/widgets/all%20expensess/all_expensess_items_list_view.dart';
import 'package:responsive_dashboard/widgets/all%20expensess/custom_bg_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
