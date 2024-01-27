import 'package:dashboard_web/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'custom_dot_indicator.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          children: List.generate(
            3,
            (index) => const MyCard(),
          ),
        ),
        const CustomDotIndicator(
          isActive: false,
        )
      ],
    );
  }
}
