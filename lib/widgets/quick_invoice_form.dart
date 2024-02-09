import 'package:flutter/material.dart';
import 'package:dashboard_web/widgets/custom_button.dart';
import 'package:dashboard_web/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: const [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: const [
            Expanded(
              child: CustomButton(
                textColor: Color(0xFF4DB7F2),
                backgourndColor: Colors.white,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    );
  }
}
