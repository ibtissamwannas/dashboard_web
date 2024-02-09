import 'package:flutter/material.dart';
import 'package:dashboard_web/widgets/custom_background_container.dart';
import 'package:dashboard_web/widgets/income_section_body.dart';

import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: SizedBox(
      height: 300,
      child: Column(
        children: const [
          IncomeSectionHeader(),
          IncomSectionBody(),
        ],
      ),
    ));
  }
}
