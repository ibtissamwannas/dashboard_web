import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartS extends StatefulWidget {
  const PieChartS({super.key});

  @override
  State<PieChartS> createState() => _PieChartSState();
}

class _PieChartSState extends State<PieChartS> {
  int active = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            active =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            value: 40,
            color: const Color(0xff208CC8),
            showTitle: false,
            radius: active == 0 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 25,
            color: const Color(0xff4EB7F2),
            showTitle: false,
            radius: active == 1 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 20,
            color: const Color(0xff064061),
            showTitle: false,
            radius: active == 2 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 22,
            color: const Color(0xffE2DECD),
            showTitle: false,
            radius: active == 3 ? 60 : 50,
          )
        ]);
  }
}
