import 'package:admin_panel/constants/images.dart';
import 'package:admin_panel/helpers/responsive.dart';
import 'package:admin_panel/pages/shows/widgets/show_cards.dart';
import 'package:admin_panel/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/controllers.dart';
import '../../constants/style.dart';

class ShowsPage extends StatelessWidget {
  const ShowsPage({Key? key}) : super(key: key);

  Widget _buildFeature() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomText(
              text: "Featured",
              size: 30,
              weight: FontWeight.bold,
            )
          ],
        ),
        Row(
          children: [
            ShowCard(
                showType: "Anime", showName: "Ousama Ranking", image: ousama),
            ShowCard(
                showType: "Anime", showName: "Ousama Ranking", image: ousama),
          ],
        )
      ],
    );
  }

  Widget _buildFeatureProduct() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomText(
              text: "Featured Products",
              size: 30,
              weight: FontWeight.bold,
            )
          ],
        ),
        Row(
          children: [
            ShowCard(
                showType: "Anime", showName: "Ousama Ranking", image: ousama),
            ShowCard(
                showType: "Anime", showName: "Ousama Ranking", image: ousama),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Obx(
              () => Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
                    ),
                    child: Row(
                      children: [
                        CustomText(
                          text: menuController.activeItem.value,
                          size: 24,
                          weight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 800,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildFeature(),
                const SizedBox(
                  width: 100,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: dark.withOpacity(.7),
                    size: 50,
                  ),
                ),
              ],
            ),
            _buildFeatureProduct(),
            _buildFeatureProduct(),
            _buildFeatureProduct(),
          ],
        )
      ],
    );
  }
}
