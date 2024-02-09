import 'package:flutter/material.dart';
import 'package:dashboard_web/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard_web/widgets/income_section.dart';
import 'package:dashboard_web/widgets/my_cards_and_transction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransctionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
