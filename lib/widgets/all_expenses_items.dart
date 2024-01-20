import 'package:flutter/material.dart';

import 'all_expenses_header.dart';

class AllExpansesItems extends StatelessWidget {
  const AllExpansesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: const [
          AllExpensessItemHeader(
            image: '',
          )
        ],
      ),
    );
  }
}
