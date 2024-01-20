import 'package:dashboard_web/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardLayoutDesktop extends StatelessWidget {
  const DashboardLayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomDrawer(),
        ),
      ],
    );
  }
}
