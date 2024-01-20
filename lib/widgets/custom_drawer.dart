import 'package:dashboard_web/models/drawer_item_model.dart';
import 'package:dashboard_web/utils/app_images.dart';
import 'package:dashboard_web/widgets/drawer_item.dart';
import 'package:dashboard_web/widgets/user_info_list.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      title: "Dashboard",
      image: Assets.assetsImagesCategory2,
    ),
    DrawerItemModel(
      title: "My Transaction",
      image: Assets.assetsImagesConvertCard,
    ),
    DrawerItemModel(
      title: "Statistic",
      image: Assets.assetsImagesGraph,
    ),
    DrawerItemModel(
      title: "Wallet Account",
      image: Assets.assetsImagesWallet2,
    ),
    DrawerItemModel(
      title: "My Investments",
      image: Assets.assetsImagesChart2,
    )
  ];

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoList(
              image: Assets.assetsImagesFace,
              title: 'Lekan Okeowo',
              subTitle: 'ibtissamalwannnas@gmail.com',
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: DrawerItems(
                      drawerItemModel: CustomDrawer.items[index],
                      isActive: activeIndex == index,
                    ),
                  ),
                );
              },
              childCount: CustomDrawer.items.length,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: const [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                DrawerItems(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.assetsImagesSetting2,
                  ),
                  isActive: false,
                ),
                DrawerItems(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.assetsImagesLogout,
                  ),
                  isActive: false,
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
