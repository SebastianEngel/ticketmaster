import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticketmaster/model/event.dart';

part 'json_models.freezed.dart';
part 'json_models.g.dart';

@freezed
abstract class ApiEventsResponse with _$ApiEventsResponse {
  factory ApiEventsResponse(@JsonKey(name: '_embedded') ApiEmbeddedObject embedded) = _ApiEventsResponse;
  factory ApiEventsResponse.fromJson(Map<String, dynamic> json) => _$ApiEventsResponseFromJson(json);
}

@freezed
abstract class ApiEmbeddedObject with _$ApiEmbeddedObject {
  factory ApiEmbeddedObject(@JsonKey(name: 'events') List<ApiEvent> events) = _ApiEmbeddedObject;
  factory ApiEmbeddedObject.fromJson(Map<String, dynamic> json) => _$ApiEmbeddedObjectFromJson(json);
}

@freezed
abstract class ApiEvent with _$ApiEvent {
  factory ApiEvent(@JsonKey(name: 'name') String name, @JsonKey(name: 'images') List<ApiEventImage> images) = _ApiEvent;
  factory ApiEvent.fromJson(Map<String, dynamic> json) => _$ApiEventFromJson(json);
}

@freezed
abstract class ApiEventImage with _$ApiEventImage {
  factory ApiEventImage(@JsonKey(name: 'url') String url) = _ApiEventImage;
  factory ApiEventImage.fromJson(Map<String, dynamic> json) => _$ApiEventImageFromJson(json);
}

extension JsonConversion on ApiEvent {
  Event toEvent() {
    return Event(name: this.name, imageUrls: this.images.map((image) => image.url).toList());
  }
}