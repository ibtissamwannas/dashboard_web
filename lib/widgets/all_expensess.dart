import 'package:flutter/material.dart';
import 'package:dashboard_web/models/all_expensess_item_model.dart';
import 'package:dashboard_web/utils/app_images.dart';
import 'package:dashboard_web/widgets/all_expensess_header.dart';
import 'package:dashboard_web/widgets/all_expensess_items_list_view.dart';
import 'package:dashboard_web/widgets/all_expenssess_item.dart';
import 'package:dashboard_web/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
