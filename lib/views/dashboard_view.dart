import 'package:dashboard_web/widgets/adaptive_layout_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DashboardLayoutDesktop(),
    ));
  }
}
