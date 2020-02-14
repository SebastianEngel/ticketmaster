import 'package:freezed_annotation/freezed_annotation.dart';

class Event {
  Event({
    @required this.name,
    @required this.imageUrls,
  })  : assert(name != null),
        assert(imageUrls != null);

  final String name;
  final List<String> imageUrls;
  bool isFavorite = false;
}
