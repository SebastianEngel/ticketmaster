import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_result.freezed.dart';

@freezed
abstract class EventsResult<T> with _$EventsResult {
  factory EventsResult.success(T payload) = Success<T>;
  factory EventsResult.error(Object error) = Error<T>;
}