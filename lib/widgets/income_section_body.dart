import 'package:flutter/material.dart';
import 'package:dashboard_web/utils/size_config.dart';
import 'package:dashboard_web/widgets/detailed_income_chart.dart';
import 'package:dashboard_web/widgets/income_chart.dart';
import 'package:dashboard_web/widgets/income_details.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ))
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
