import 'package:dashboard_web/widgets/adaptive_layout_widget.dart';
import 'package:dashboard_web/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import '../widgets/dash_board_tablet.dart';
import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/mobile_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: key,
        appBar: MediaQuery.of(context).size.width < 800
            ? AppBar(
                elevation: 1,
                backgroundColor: const Color(0xFFFAFAFA),
                leading: IconButton(
                  onPressed: () {
                    key.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
              )
            : null,
        drawer: MediaQuery.of(context).size.width < 800
            ? const CustomDrawer()
            : null,
        body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const DashbardTabletLayout(),
          desktopLayout: (context) => const DashboardLayoutDesktop(),
        ));
  }
}
