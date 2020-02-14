// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Event {
  String get name;
  List<String> get imageUrls;

  Event copyWith({String name, List<String> imageUrls});
}

class _$_Event implements _Event {
  _$_Event({@required this.name, @required this.imageUrls})
      : assert(name != null),
        assert(imageUrls != null);

  @override
  final String name;
  @override
  final List<String> imageUrls;

  @override
  String toString() {
    return 'Event(name: $name, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Event &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ name.hashCode ^ imageUrls.hashCode;

  @override
  _$_Event copyWith({
    Object name = freezed,
    Object imageUrls = freezed,
  }) {
    assert(name != null);
    assert(imageUrls != null);
    return _$_Event(
      name: name == freezed ? this.name : name as String,
      imageUrls:
          imageUrls == freezed ? this.imageUrls : imageUrls as List<String>,
    );
  }
}

abstract class _Event implements Event {
  factory _Event({@required String name, @required List<String> imageUrls}) =
      _$_Event;

  @override
  String get name;
  @override
  List<String> get imageUrls;

  @override
  _Event copyWith({String name, List<String> imageUrls});
}
