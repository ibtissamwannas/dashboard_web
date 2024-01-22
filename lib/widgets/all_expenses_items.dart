import 'package:dashboard_web/models/all_expenses_item_model.dart';
import 'package:dashboard_web/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'all_expenses_header.dart';

class AllExpansesItems extends StatelessWidget {
  const AllExpansesItems({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpansesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: itemModel.imgae,
            isSelected: isSelected,
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: isSelected
                  ? const Color(0xFFFAFAFA)
                  : const Color(0xFFAAAAAA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleRSemiBold24.copyWith(
              color: isSelected ? Colors.white : const Color(0xFF4EB7F2),
            ),
          )
        ],
      ),
    );
  }
}
