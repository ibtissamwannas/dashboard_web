import 'package:dashboard_web/widgets/all_expenses.dart';
import 'package:dashboard_web/widgets/custom_drawer.dart';
import 'package:dashboard_web/widgets/pie_chart.dart';
import 'package:dashboard_web/widgets/quick_invoice.dart';
import 'package:dashboard_web/widgets/rangle_option.dart';
import 'package:dashboard_web/widgets/size_config.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import 'cards_page_view.dart';
import 'custom_container.dart';

class DashboardLayoutDesktop extends StatelessWidget {
  const DashboardLayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 30,
                            ),
                            AllExpenses(),
                            SizedBox(
                              height: 10,
                            ),
                            QuickInvoice(),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
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
                                    children:  [
                                      Text(
                                        "Income",
                                        style: AppStyles.styleSemiBold20(context),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Expanded(
                                        child: SizedBox(
                                          height: 120,
                                          child: PieChartS(),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 12,
                                                    width: 12,
                                                    decoration:
                                                        const ShapeDecoration(
                                                      color: Color(0xFF208CC8),
                                                      shape: OvalBorder(),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 24,
                                                  ),
                                                   Text(
                                                    "Design",
                                                    style: AppStyles
                                                        .styleRegular16(context),
                                                  ),
                                                  const SizedBox(
                                                    width: 24,
                                                  ),
                                                   Text(
                                                    "40%",
                                                    style:
                                                        AppStyles.styleMedium16(context),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    color: Color(0xFF4EB7F2),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                                 Text(
                                                  "Design",
                                                  style:
                                                      AppStyles.styleRegular16(context),
                                                ),
                                              Text(
                                                  "40%",
                                                  style:
                                                      AppStyles.styleMedium16(context),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    color: Color(0xFF064061),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                            Text(
                                                  "Design",
                                                  style:
                                                      AppStyles.styleRegular16(context),
                                                ),
                                          Text(
                                                  "40%",
                                                  style:
                                                      AppStyles.styleMedium16(context),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    color: Color(0xFFE2DECD),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                             Text(
                                                  "Design",
                                                  style:
                                                      AppStyles.styleRegular16(context),
                                                ),
                                             Text(
                                                  "40%",
                                                  style:
                                                      AppStyles.styleMedium16(context),
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
                      )
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}
