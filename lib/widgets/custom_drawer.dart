import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list.dart';
import 'package:responsive_dashboard/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfo(
            image: Assets.imagesAvatar3,
            titleText: 'Sultan',
            subtitleText: 'egt1998@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsList()
        ],
      ),
    );
  }
}
