import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';
import 'package:responsive_dashboard/widgets/Left%20section/dots_row_indicator.dart';
import 'package:responsive_dashboard/widgets/Left%20section/pages_cards.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({
    super.key,
  });

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My Cards',
            style: AppStyles.styleMedium20(context)
                .copyWith(color: const Color(0XFF064061)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        PagesCards(
          pageController: pageController,
        ),
        const SizedBox(
          height: 24,
        ),
        DotsRowIndicator(
          currentIndex: currentPage,
        )
      ],
    );
  }
}
