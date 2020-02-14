import 'package:flutter/cupertino.dart';
import 'package:ticketmaster/app_navigator.dart';
import 'package:ticketmaster/data/api/events_result.dart';
import 'package:ticketmaster/data/api/ticketmaster_api_client.dart';
import 'package:ticketmaster/model/event.dart';

/// View model for the [EventsScreen].
class EventsViewModel extends ChangeNotifier {
  EventsViewModel({
    @required TicketmasterApiClient apiClient,
    @required AppNavigator navigator,
  })  : assert(apiClient != null),
        assert(navigator != null),
        _apiClient = apiClient,
        _navigator = navigator;

  final TicketmasterApiClient _apiClient;
  final AppNavigator _navigator;
  final List<Event> events = [];
  bool _initialEventsLoading = false;
  bool _initialEventsError = false;

  bool get isInitialEventsLoading => _initialEventsLoading;

  bool get isInitialEventsError => _initialEventsError;

  Future<void> onViewStart() {
    return _loadInitialEvents();
  }

  void onEventSelected(Event event) {
    _navigator.navigateToEventDetails(event);
  }

  Future<void> _loadInitialEvents() async {
    _initialEventsError = false;
    _initialEventsLoading = true;
    notifyListeners();

    EventsResult result = await _apiClient.getEvents();

    if (result is Success) {
      events.clear();
      events.addAll(result.payload);
    } else {
      _initialEventsError = true;
    }

    _initialEventsLoading = false;
    notifyListeners();
  }
}
