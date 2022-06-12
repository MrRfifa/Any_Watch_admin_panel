import 'package:admin_panel/constants/controllers.dart';
import 'package:admin_panel/routing/router.dart';
import 'package:admin_panel/routing/routes.dart';
import 'package:flutter/widgets.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationkey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
