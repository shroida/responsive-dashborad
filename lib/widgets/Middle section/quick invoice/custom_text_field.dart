import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xffaaaaaa)),
            fillColor: const Color(0xfffafafa),
            filled: true,
            border: outlineInputBorder(),
            enabledBorder: outlineInputBorder(),
            focusedBorder: outlineInputBorder()));
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xfffafafa),
        ),
        borderRadius: BorderRadius.circular(12));
  }
}
