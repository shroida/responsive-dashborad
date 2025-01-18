import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer_items_list.dart';
import 'package:responsive_dashboard/widgets/drawer/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfo(
              image: Assets.imagesAvatar3,
              titleText: 'Sultan',
              subtitleText: 'egt1998@gmail.com',
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          const SliverToBoxAdapter(
            child: DrawerItemsList(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesSettings,
                    title: 'Settings',
                  ),
                  isActive: false,
                ),
                const SizedBox(height: 8),
                DrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesLogout,
                    title: 'Log out',
                  ),
                  isActive: false,
                ),
                const SizedBox(height: 47),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
