import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ticketmaster/data/api/json_models.dart';
import 'package:ticketmaster/data/api/events_result.dart';
import 'package:ticketmaster/model/event.dart';

/// Client for the Ticketmaster API.
class TicketmasterApiClient {
  TicketmasterApiClient({
    @required Dio dio,
    @required String baseUrl,
    @required String apiKey,
  })  : assert(dio != null),
        assert(baseUrl != null),
        assert(apiKey != null),
        _eventsUrl = '$baseUrl/events.json?countryCode=DE&apikey=$apiKey',
        _dio = dio;

  final Dio _dio;
  final String _eventsUrl;

  /// Returns events happening in Germany.
  Future<EventsResult<List<Event>>> getEvents() async {
    try {
      final response = await _dio.get(_eventsUrl);
      final jsonBody = ApiEventsResponse.fromJson(response.data);
      // TODO Evaluate status code
      final events = jsonBody.embedded.events.map((apiEvent) => apiEvent.toEvent()).toList();
      return EventsResult.success(events);
    } catch (e) {
      return EventsResult.error(e);
    }
  }
}
