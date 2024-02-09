import 'package:flutter/material.dart';
import 'package:dashboard_web/utils/app_styles.dart';
import 'package:dashboard_web/widgets/custom_background_container.dart';
import 'package:dashboard_web/widgets/custom_text_field.dart';
import 'package:dashboard_web/widgets/latest_transction.dart';
import 'package:dashboard_web/widgets/latest_transction_list_view.dart';
import 'package:dashboard_web/widgets/quick_invoice_form.dart';
import 'package:dashboard_web/widgets/quick_invoice_header.dart';
import 'package:dashboard_web/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
