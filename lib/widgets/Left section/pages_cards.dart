import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/my_card.dart';

class PagesCards extends StatelessWidget {
  const PagesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
