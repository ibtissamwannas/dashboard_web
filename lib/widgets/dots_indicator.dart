import 'package:dashboard_web/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
          ),
          child: CustomDotIndicator(
            isActive: index == currentPage ? true : false,
          ),
        ),
      ),
    );
  }
}
