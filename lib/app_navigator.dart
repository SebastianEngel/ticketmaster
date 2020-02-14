import 'package:flutter/material.dart';
import 'package:ticketmaster/model/event.dart';
import 'package:ticketmaster/ui/event_details_screen.dart';
import 'package:ticketmaster/ui/events_screen.dart';

/// Encapsulation of navigation functionality.
class AppNavigator {
  final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

  void navigateToEventDetails(Event event) {
    rootNavigatorKey.currentState.pushNamed(_AppRoutes.eventDetails, arguments: {'event': event});
  }

  static Map<String, Object> getRoutes(BuildContext context) {
    return {
      _AppRoutes.root: (context) => EventsScreen(),
      _AppRoutes.eventDetails: (context) {
        Map<String, Object> arguments = ModalRoute.of(context).settings.arguments;
        return EventDetailsScreen(event: arguments['event']);
      }
    };
  }
}

class _AppRoutes {
  _AppRoutes._();

  static const String root = '/';
  static const String eventDetails = '/event_details';
}
