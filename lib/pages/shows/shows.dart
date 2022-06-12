import 'package:admin_panel/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ShowsPage extends StatelessWidget {
  const ShowsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(
        text: "Shows",
      ),
    );
  }
}
