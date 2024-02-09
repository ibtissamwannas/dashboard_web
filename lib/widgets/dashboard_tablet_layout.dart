import 'package:flutter/material.dart';
import 'package:dashboard_web/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard_web/widgets/custom_drawer.dart';
import 'package:dashboard_web/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard_web/widgets/income_section.dart';
import 'package:dashboard_web/widgets/my_cards_and_transction_history_section.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashBoardMobileLayout(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
