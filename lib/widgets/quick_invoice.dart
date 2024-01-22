import 'package:dashboard_web/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      padding: 20,
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "Quick Invoice",
                style: AppStyles.styleSemiBold20,
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
