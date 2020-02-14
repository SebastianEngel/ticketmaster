import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ticketmaster/model/event.dart';

/// Screen showing the details of a particular event.
class EventDetailsScreen extends StatelessWidget {
  EventDetailsScreen({@required this.event}) : assert(event != null);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(event.name, overflow: TextOverflow.ellipsis)),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            height: 200,
            child: event.imageUrls.isNotEmpty
                ? CachedNetworkImage(imageUrl: event.imageUrls.first, fit: BoxFit.cover)
                : Center(child: Icon(Icons.camera_alt)))
      ],
    );
  }
}
