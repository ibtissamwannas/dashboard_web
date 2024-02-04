import 'package:dashboard_web/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/user_info_model.dart';

class UserInfoList extends StatelessWidget {
  const UserInfoList({
    super.key,
    required this.userinfo,
  });

  final UserInfoModel userinfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userinfo.image,
          ),
          title: Text(
            userinfo.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userinfo.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
