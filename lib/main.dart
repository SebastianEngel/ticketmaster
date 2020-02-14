import 'package:flutter/material.dart';
import 'package:ticketmaster/app.dart';
import 'package:ticketmaster/service_locator.dart';

void main() {
  locator.registerDependencies();

  runApp(App());
}
