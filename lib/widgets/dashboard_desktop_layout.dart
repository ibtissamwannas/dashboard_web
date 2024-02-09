import 'package:flutter/material.dart';
import 'package:dashboard_web/widgets/all_expensess.dart';
import 'package:dashboard_web/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard_web/widgets/custom_dot.dart';
import 'package:dashboard_web/widgets/custom_drawer.dart';
import 'package:dashboard_web/widgets/dots_indicator.dart';
import 'package:dashboard_web/widgets/income_section.dart';
import 'package:dashboard_web/widgets/my_card.dart';
import 'package:dashboard_web/widgets/my_cards_and_transction_history_section.dart';
import 'package:dashboard_web/widgets/my_cards_page_view.dart';
import 'package:dashboard_web/widgets/my_cards_section.dart';
import 'package:dashboard_web/widgets/quick_invoice.dart';
import 'package:dashboard_web/widgets/transction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensessAndQuickInvoiceSection(),
                        )),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: const [
                        SizedBox(
                          height: 40,
                        ),
                        MyCardsAndTransctionHistorySection(),
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(child: IncomeSection()),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
