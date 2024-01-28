import 'package:dashboard_web/utils/app_style.dart';
import 'package:dashboard_web/widgets/my_card.dart';
import 'package:dashboard_web/widgets/row_transaction_history.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'dots_indicator.dart';

class CardPageView extends StatefulWidget {
  const CardPageView({
    super.key,
  });

  @override
  State<CardPageView> createState() => _CardPageViewState();
}

class _CardPageViewState extends State<CardPageView> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 420,
          child: Text(
            "My Card",
            style: AppStyles.styleSemiBold16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ExpandablePageView(
          controller: pageController,
          children: List.generate(
            3,
            (index) => const Padding(
              padding: EdgeInsets.only(right: 5),
              child: MyCard(),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DotsIndicator(
          currentPage: currentIndex,
        ),
        const SizedBox(
          height: 15,
        ),

        const Divider(),

        // transaction:
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20,
            ),
            Text(
              "see all",
              style: AppStyles.styleMedium16.copyWith(
                color: const Color(
                  0xFF4EB7F2,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const RowTransactionHistory(),
        const SizedBox(
          height: 25,
        ),
        const RowTransactionHistory2(),
        const SizedBox(
          height: 25,
        ),
        const RowTransactionHistory3(),
      ],
    );
  }
}

class RowTransactionHistory2 extends StatelessWidget {
  const RowTransactionHistory2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          color: const Color(0xFFFAFAFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: ListTile(
          title: const Text(
            "Landing Page project",
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Text(
              "13 Apr, 2022",
              style: AppStyles.styleRegular16.copyWith(
                color: const Color(
                  0xFFAAAAAA,
                ),
              ),
            ),
          ),
          trailing: Text(
            r"$20,129",
            style: AppStyles.styleSemiBold20.copyWith(
              color: const Color(0xFF7CD87A),
            ),
          ),
        ));
  }
}

class RowTransactionHistory3 extends StatelessWidget {
  const RowTransactionHistory3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          color: const Color(0xFFFAFAFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: ListTile(
          title: const Text(
            "Juni Mobile App project",
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Text(
              "13 Apr, 2022 at 3:30 PM",
              style: AppStyles.styleRegular16.copyWith(
                color: const Color(
                  0xFFAAAAAA,
                ),
              ),
            ),
          ),
          trailing: Text(
            r"$20,129",
            style: AppStyles.styleSemiBold20.copyWith(
              color: const Color(0xFF7CD87A),
            ),
          ),
        ));
  }
}
