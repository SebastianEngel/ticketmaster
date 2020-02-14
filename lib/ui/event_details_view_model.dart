import 'package:flutter/material.dart';
import 'package:ticketmaster/model/event.dart';
import 'package:ticketmaster/ui/event_details_screen.dart';

/// View model for the [EventDetailsScreen].
class EventDetailsViewModel extends ChangeNotifier {
  EventDetailsViewModel({@required this.event}) : assert(event != null);

  final Event event;

  void onFavoriteAction() {
    event.isFavorite = !event.isFavorite;
    notifyListeners();
  }
}
