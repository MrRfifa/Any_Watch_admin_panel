import 'package:admin_panel/pages/overview/widgets/info_cards.dart';
import 'package:flutter/material.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Number of orders",
              value: "15",
              topColor: Colors.orange,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Number of messages",
              value: "5",
              topColor: Colors.lightGreen,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            InfoCard(
              title: "Cancelled orders",
              value: "5",
              topColor: Colors.red,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Number of clients",
              value: "8",
              topColor: Colors.green,
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
