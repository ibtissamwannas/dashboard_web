import 'package:dashboard_web/utils/app_images.dart';
import 'package:dashboard_web/utils/app_style.dart';
import 'package:dashboard_web/widgets/rangle_option.dart';
import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import 'all_expenses_items.dart';
import 'custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      padding: 20,
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
          ),
          const SizedBox(
            height: 16,
          ),
          const AllExpansesItemListView()
        ],
      ),
    );
  }
}

class AllExpansesItemListView extends StatefulWidget {
  const AllExpansesItemListView({super.key});

  static const items = [
    AllExpansesItemModel(
      date: 'April 2022',
      imgae: Assets.assetsImagesMoneys,
      price: r'$20,129',
      title: 'Balance',
    ),
    AllExpansesItemModel(
      date: 'April 2022',
      imgae: Assets.assetsImagesCardReceive,
      price: r'$20,129',
      title: 'Income',
    ),
    AllExpansesItemModel(
      date: 'April 2022',
      imgae: Assets.assetsImagesCardSend,
      price: r'$20,129',
      title: 'Expanses',
    ),
  ];

  @override
  State<AllExpansesItemListView> createState() =>
      _AllExpansesItemListViewState();
}

class _AllExpansesItemListViewState extends State<AllExpansesItemListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpansesItemListView.items.asMap().entries.map((e) {
      int index = e.key;
      var items = e.value;

      return Expanded(
        child: Padding(
          padding: index == 1
              ? const EdgeInsets.symmetric(horizontal: 12)
              : const EdgeInsets.all(0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AllExpansesItems(
              itemModel: items,
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      );
    }).toList()
        // items
        //     .map(
        //       (e) => Expanded(
        //         child: AllExpansesItems(
        //           itemModel: e,
        //         ),
        //       ),
        //     )
        //     .toList(),
        );
  }
}
