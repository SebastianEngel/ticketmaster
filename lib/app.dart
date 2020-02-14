import 'package:flutter/material.dart';
import 'package:ticketmaster/app_navigator.dart';
import 'package:ticketmaster/service_locator.dart';

/// The top-level app widget.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<AppNavigator>().rootNavigatorKey,
      routes: AppNavigator.getRoutes(context),
    );
  }
}
