import 'package:dashboard_web/widgets/all_expenses.dart';
import 'package:dashboard_web/widgets/custom_drawer.dart';
import 'package:dashboard_web/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class DashboardLayoutDesktop extends StatelessWidget {
  const DashboardLayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                AllExpenses(),
                SizedBox(
                  height: 32,
                ),
                QuickInvoice(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
