import 'package:dashboard_web/utils/app_images.dart';
import 'package:dashboard_web/widgets/user_info_list.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: const [
          UserInfoList(
            image: Assets.assetsImagesFace,
            title: 'Lekan Okeowo',
            subTitle: 'ibtissamalwannnas@gmail.com',
          )
        ],
      ),
    );
  }
}
