import 'package:dashboard_web/widgets/pie_chart.dart';
import 'package:dashboard_web/widgets/quick_invoice.dart';
import 'package:dashboard_web/widgets/rangle_option.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import 'all_expenses.dart';
import 'cards_page_view.dart';
import 'custom_container.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const AllExpenses(),
          const SizedBox(
            height: 10,
          ),
          const QuickInvoice(),
          const SizedBox(
            height: 40,
          ),
          CustomeContainer(
            padding: 20,
            child: Column(
              children: const [
                CardPageView(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomeContainer(
            padding: 20,
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "Income",
                      style: AppStyles.styleSemiBold20,
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    RangeOption()
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: SizedBox(
                        height: 200,
                        child: PieChartS(),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF208CC8),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const Text(
                                "Design",
                                style: AppStyles.styleRegular16,
                              ),
                              const Text(
                                "40%",
                                style: AppStyles.styleMedium16,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF4EB7F2),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const Text(
                                "Design",
                                style: AppStyles.styleRegular16,
                              ),
                              const Text(
                                "40%",
                                style: AppStyles.styleMedium16,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF064061),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const Text(
                                "Design",
                                style: AppStyles.styleRegular16,
                              ),
                              const Text(
                                "40%",
                                style: AppStyles.styleMedium16,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFE2DECD),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const Text(
                                "Design",
                                style: AppStyles.styleRegular16,
                              ),
                              const Text(
                                "40%",
                                style: AppStyles.styleMedium16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
