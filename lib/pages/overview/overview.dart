import 'package:admin_panel/constants/controllers.dart';
import 'package:admin_panel/helpers/responsive.dart';
import 'package:admin_panel/pages/overview/widgets/new_shows.dart';
import 'package:admin_panel/pages/overview/widgets/overview_cards_medium.dart';
import 'package:admin_panel/pages/overview/widgets/overview_cards_small.dart';
import 'package:admin_panel/pages/overview/widgets/revenue_section_large.dart';
import 'package:admin_panel/pages/overview/widgets/revenue_section_small.dart';
import 'package:admin_panel/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/overview_cards_large.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
                ),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  OverviewCardsMediumScreen()
                else
                  OverViewCardsLargeScreen()
              else
                OverviewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                const RevenueSectionLarge()
              else
                const RevenueSectionSmall(),
              const Shows()
            ],
          ),
        ),
      ],
    );
  }
}
