import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.bgColor, this.textColor});
  final Color? bgColor,textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 0,
              backgroundColor: bgColor ?? const Color(0xff4db7f2)),
          onPressed: () {},
          child: Text(
            'Send money',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor
            ),
          )),
    );
  }
}
