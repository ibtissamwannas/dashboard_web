import 'package:flutter/material.dart';
import 'package:dashboard_web/widgets/custom_background_container.dart';
import 'package:dashboard_web/widgets/my_cards_section.dart';
import 'package:dashboard_web/widgets/transction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: const [
        MyCardsSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TrasnctionHistory(),
      ],
    ));
  }
}
