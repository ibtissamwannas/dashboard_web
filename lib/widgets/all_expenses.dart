import 'package:dashboard_web/utils/app_style.dart';
import 'package:dashboard_web/widgets/rangle_option.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        20,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "All Expenses",
                style: AppStyles.styleSemiBold20,
              ),
              Expanded(
                child: SizedBox(),
              ),
              RangeOption()
            ],
          )
        ],
      ),
    );
  }
}
