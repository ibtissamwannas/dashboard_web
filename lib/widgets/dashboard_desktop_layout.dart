import 'package:dashboard_web/widgets/all_expenses.dart';
import 'package:dashboard_web/widgets/custom_container.dart';
import 'package:dashboard_web/widgets/custom_drawer.dart';
import 'package:dashboard_web/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

import 'cards_page_view.dart';

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
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(
                  height: 40,
                ),
                AllExpenses(),
                SizedBox(
                  height: 10,
                ),
                QuickInvoice(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomeContainer(
                padding: 20,
                child: Column(
                  children: const [
                    CardPageView(),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
