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
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          if (screenWidth < 1300)
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Menu',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the drawer
                    },
                  ),
                ],
              ),
            ),
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
