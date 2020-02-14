import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
abstract class Event with _$Event {
  factory Event({@required String name, @required List<String> imageUrls}) = _Event;
}