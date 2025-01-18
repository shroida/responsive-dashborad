import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfo(
            image: Assets.imagesAvatar3,
            titleText: 'Sultan',
            subtitleText: 'egt1998@gmail.com',
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return DrawerItem(drawerItemModel: items[index]);
            },
          )
        ],
      ),
    );
  }
}
