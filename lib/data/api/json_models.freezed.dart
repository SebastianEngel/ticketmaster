// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of 'json_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

ApiEventsResponse _$ApiEventsResponseFromJson(Map<String, dynamic> json) {
  return _ApiEventsResponse.fromJson(json);
}

mixin _$ApiEventsResponse {
  @JsonKey(name: '_embedded')
  ApiEmbeddedObject get embedded;

  ApiEventsResponse copyWith(
      {@JsonKey(name: '_embedded') ApiEmbeddedObject embedded});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_ApiEventsResponse implements _ApiEventsResponse {
  _$_ApiEventsResponse(@JsonKey(name: '_embedded') this.embedded)
      : assert(embedded != null);

  factory _$_ApiEventsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiEventsResponseFromJson(json);

  @override
  @JsonKey(name: '_embedded')
  final ApiEmbeddedObject embedded;

  @override
  String toString() {
    return 'ApiEventsResponse(embedded: $embedded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiEventsResponse &&
            (identical(other.embedded, embedded) ||
                const DeepCollectionEquality()
                    .equals(other.embedded, embedded)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ embedded.hashCode;

  @override
  _$_ApiEventsResponse copyWith({
    Object embedded = freezed,
  }) {
    assert(embedded != null);
    return _$_ApiEventsResponse(
      embedded == freezed ? this.embedded : embedded as ApiEmbeddedObject,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiEventsResponseToJson(this);
  }
}

abstract class _ApiEventsResponse implements ApiEventsResponse {
  factory _ApiEventsResponse(
          @JsonKey(name: '_embedded') ApiEmbeddedObject embedded) =
      _$_ApiEventsResponse;

  factory _ApiEventsResponse.fromJson(Map<String, dynamic> json) =
      _$_ApiEventsResponse.fromJson;

  @override
  @JsonKey(name: '_embedded')
  ApiEmbeddedObject get embedded;

  @override
  _ApiEventsResponse copyWith(
      {@JsonKey(name: '_embedded') ApiEmbeddedObject embedded});
}

ApiEmbeddedObject _$ApiEmbeddedObjectFromJson(Map<String, dynamic> json) {
  return _ApiEmbeddedObject.fromJson(json);
}

mixin _$ApiEmbeddedObject {
  @JsonKey(name: 'events')
  List<ApiEvent> get events;

  ApiEmbeddedObject copyWith({@JsonKey(name: 'events') List<ApiEvent> events});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_ApiEmbeddedObject implements _ApiEmbeddedObject {
  _$_ApiEmbeddedObject(@JsonKey(name: 'events') this.events)
      : assert(events != null);

  factory _$_ApiEmbeddedObject.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiEmbeddedObjectFromJson(json);

  @override
  @JsonKey(name: 'events')
  final List<ApiEvent> events;

  @override
  String toString() {
    return 'ApiEmbeddedObject(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiEmbeddedObject &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ events.hashCode;

  @override
  _$_ApiEmbeddedObject copyWith({
    Object events = freezed,
  }) {
    assert(events != null);
    return _$_ApiEmbeddedObject(
      events == freezed ? this.events : events as List<ApiEvent>,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiEmbeddedObjectToJson(this);
  }
}

abstract class _ApiEmbeddedObject implements ApiEmbeddedObject {
  factory _ApiEmbeddedObject(@JsonKey(name: 'events') List<ApiEvent> events) =
      _$_ApiEmbeddedObject;

  factory _ApiEmbeddedObject.fromJson(Map<String, dynamic> json) =
      _$_ApiEmbeddedObject.fromJson;

  @override
  @JsonKey(name: 'events')
  List<ApiEvent> get events;

  @override
  _ApiEmbeddedObject copyWith({@JsonKey(name: 'events') List<ApiEvent> events});
}

ApiEvent _$ApiEventFromJson(Map<String, dynamic> json) {
  return _ApiEvent.fromJson(json);
}

mixin _$ApiEvent {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'images')
  List<ApiEventImage> get images;

  ApiEvent copyWith(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'images') List<ApiEventImage> images});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_ApiEvent implements _ApiEvent {
  _$_ApiEvent(
      @JsonKey(name: 'name') this.name, @JsonKey(name: 'images') this.images)
      : assert(name != null),
        assert(images != null);

  factory _$_ApiEvent.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiEventFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'images')
  final List<ApiEventImage> images;

  @override
  String toString() {
    return 'ApiEvent(name: $name, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ name.hashCode ^ images.hashCode;

  @override
  _$_ApiEvent copyWith({
    Object name = freezed,
    Object images = freezed,
  }) {
    assert(name != null);
    assert(images != null);
    return _$_ApiEvent(
      name == freezed ? this.name : name as String,
      images == freezed ? this.images : images as List<ApiEventImage>,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiEventToJson(this);
  }
}

abstract class _ApiEvent implements ApiEvent {
  factory _ApiEvent(@JsonKey(name: 'name') String name,
      @JsonKey(name: 'images') List<ApiEventImage> images) = _$_ApiEvent;

  factory _ApiEvent.fromJson(Map<String, dynamic> json) = _$_ApiEvent.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'images')
  List<ApiEventImage> get images;

  @override
  _ApiEvent copyWith(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'images') List<ApiEventImage> images});
}

ApiEventImage _$ApiEventImageFromJson(Map<String, dynamic> json) {
  return _ApiEventImage.fromJson(json);
}

mixin _$ApiEventImage {
  @JsonKey(name: 'url')
  String get url;

  ApiEventImage copyWith({@JsonKey(name: 'url') String url});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_ApiEventImage implements _ApiEventImage {
  _$_ApiEventImage(@JsonKey(name: 'url') this.url) : assert(url != null);

  factory _$_ApiEventImage.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiEventImageFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'ApiEventImage(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiEventImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ url.hashCode;

  @override
  _$_ApiEventImage copyWith({
    Object url = freezed,
  }) {
    assert(url != null);
    return _$_ApiEventImage(
      url == freezed ? this.url : url as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiEventImageToJson(this);
  }
}

abstract class _ApiEventImage implements ApiEventImage {
  factory _ApiEventImage(@JsonKey(name: 'url') String url) = _$_ApiEventImage;

  factory _ApiEventImage.fromJson(Map<String, dynamic> json) =
      _$_ApiEventImage.fromJson;

  @override
  @JsonKey(name: 'url')
  String get url;

  @override
  _ApiEventImage copyWith({@JsonKey(name: 'url') String url});
}
