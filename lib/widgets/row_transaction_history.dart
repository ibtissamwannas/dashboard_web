import 'package:dashboard_web/utils/app_style.dart';
import 'package:flutter/material.dart';

class RowTransactionHistory extends StatelessWidget {
  const RowTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          color: const Color(0xFFFAFAFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: ListTile(
          title: Text(
            "Cash Withdrawal",
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Text(
              "13 Apr, 2022",
              style: AppStyles.styleRegular16(context).copyWith(
                color: const Color(
                  0xFFAAAAAA,
                ),
              ),
            ),
          ),
          trailing: Text(
            r"$20,129",
            style: AppStyles.styleSemiBold20(context)
                .copyWith(color: const Color(0xFFF3735E)),
          ),
        ));
  }
}
