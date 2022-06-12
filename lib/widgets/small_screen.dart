import 'package:admin_panel/helpers/local_navigator.dart';
import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: localNavigator(),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
    );
  }
}
