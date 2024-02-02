import 'package:dashboard_web/widgets/adaptive_layout_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/dash_board_tablet.dart';
import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/mobile_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const DashbardTabletLayout(),
      desktopLayout: (context) => const DashboardLayoutDesktop(),
    ));
  }
}
