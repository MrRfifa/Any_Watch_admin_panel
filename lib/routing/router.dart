import 'package:admin_panel/pages/authentication/authentication.dart';
import 'package:admin_panel/pages/clients/clients.dart';
import 'package:admin_panel/pages/overview/overview.dart';
import 'package:admin_panel/pages/shows/shows.dart';
import 'package:admin_panel/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverViewPage());
    case showsPageRoute:
      return _getPageRoute(const ShowsPage());
    case clientPageRoute:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const AuthenticationPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
