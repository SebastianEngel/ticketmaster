// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiEventsResponse _$_$_ApiEventsResponseFromJson(Map<String, dynamic> json) {
  return _$_ApiEventsResponse(
    json['_embedded'] == null
        ? null
        : ApiEmbeddedObject.fromJson(json['_embedded'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ApiEventsResponseToJson(
        _$_ApiEventsResponse instance) =>
    <String, dynamic>{
      '_embedded': instance.embedded,
    };

_$_ApiEmbeddedObject _$_$_ApiEmbeddedObjectFromJson(Map<String, dynamic> json) {
  return _$_ApiEmbeddedObject(
    (json['events'] as List)
        ?.map((e) =>
            e == null ? null : ApiEvent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ApiEmbeddedObjectToJson(
        _$_ApiEmbeddedObject instance) =>
    <String, dynamic>{
      'events': instance.events,
    };

_$_ApiEvent _$_$_ApiEventFromJson(Map<String, dynamic> json) {
  return _$_ApiEvent(
    json['name'] as String,
    (json['images'] as List)
        ?.map((e) => e == null
            ? null
            : ApiEventImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ApiEventToJson(_$_ApiEvent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'images': instance.images,
    };

_$_ApiEventImage _$_$_ApiEventImageFromJson(Map<String, dynamic> json) {
  return _$_ApiEventImage(
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$_ApiEventImageToJson(_$_ApiEventImage instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
