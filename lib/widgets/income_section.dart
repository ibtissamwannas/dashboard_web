import 'package:flutter/material.dart';
import 'package:dashboard_web/utils/app_styles.dart';
import 'package:dashboard_web/widgets/custom_background_container.dart';
import 'package:dashboard_web/widgets/income_chart.dart';
import 'package:dashboard_web/widgets/income_details.dart';
import 'package:dashboard_web/widgets/income_section_body.dart';
import 'package:dashboard_web/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: const [IncomeSectionHeader(), IncomSectionBody()],
    ));
  }
}
