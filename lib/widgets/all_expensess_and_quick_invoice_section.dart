import 'package:dashboard_web/widgets/all_expensess.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_web/widgets/all_expensess.dart';
import 'package:dashboard_web/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
