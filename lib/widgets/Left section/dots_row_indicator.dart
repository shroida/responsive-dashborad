import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Left%20section/dots_indicator.dart';

class DotsRowIndicator extends StatelessWidget {
  const DotsRowIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: DotsIndicator(isActive: currentIndex == index),
        );
      }),
    );
  }
}
