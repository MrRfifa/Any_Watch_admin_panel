import 'package:admin_panel/pages/overview/widgets/info_cards_small.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 350,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Number of orders",
            value: "15",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Number of messages",
            value: "5",
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled orders",
            value: "5",
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Number of clients",
            value: "8",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
