import 'package:admin_panel/helpers/responsive.dart';
import 'package:admin_panel/widgets/large_screen.dart';
import 'package:admin_panel/widgets/side_menu.dart';
import 'package:admin_panel/widgets/small_screen.dart';
import 'package:admin_panel/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
