import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo(
      {super.key,
      required this.image,
      required this.titleText,
      required this.subtitleText});
  final String image, titleText, subtitleText;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffafafa),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          titleText,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subtitleText,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
