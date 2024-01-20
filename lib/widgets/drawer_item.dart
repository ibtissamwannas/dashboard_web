import 'package:dashboard_web/models/drawer_item_model.dart';
import 'package:dashboard_web/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(
          drawerItemModel.image,
        ),
        title: Text(
          drawerItemModel.title,
          style: isActive ? AppStyles.styleBold16 : AppStyles.styleMedium16,
        ),
        trailing: Container(
          width: 3.27,
          decoration: isActive
              ? const BoxDecoration(
                  color: Color(
                    0xFF4EB7F2,
                  ),
                )
              : null,
        ));
  }
}
