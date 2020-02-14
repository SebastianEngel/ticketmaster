import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticketmaster/model/event.dart';
import 'package:ticketmaster/ui/event_details_view_model.dart';

/// Screen showing the details of a particular event.
class EventDetailsScreen extends StatelessWidget {
  EventDetailsScreen({@required this.event}) : assert(event != null);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EventDetailsViewModel>(
        create: (context) => EventDetailsViewModel(event: event),
        child: Consumer<EventDetailsViewModel>(builder: (context, viewModel, staticWidget) {
          return Scaffold(
            appBar: _buildAppBar(context),
            body: _buildBody(),
          );
        }));
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(event.name, overflow: TextOverflow.ellipsis),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            (!event.isFavorite ?? false) ? Icons.favorite_border : Icons.favorite,
            color: Colors.red,
          ),
          onPressed: Provider.of<EventDetailsViewModel>(context).onFavoriteAction,
        )
      ],
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
