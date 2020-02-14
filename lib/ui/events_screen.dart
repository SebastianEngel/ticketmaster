import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticketmaster/app_navigator.dart';
import 'package:ticketmaster/data/api/ticketmaster_api_client.dart';
import 'package:ticketmaster/model/event.dart';
import 'package:ticketmaster/service_locator.dart';
import 'package:ticketmaster/ui/events_view_model.dart';

/// Screen showing the list of events.
class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Events')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ChangeNotifierProvider<EventsViewModel>(
        create: (context) => EventsViewModel(
              apiClient: locator<TicketmasterApiClient>(),
              navigator: locator<AppNavigator>(),
            )..onViewStart(),
        child: Consumer<EventsViewModel>(
          builder: (context, viewModel, staticWidget) {
            if (viewModel.isInitialEventsLoading) {
              return _buildProgressState();
            } else {
              return _buildSuccessState(context);
            }
          },
        ));
  }

  Widget _buildProgressState() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _buildSuccessState(BuildContext context) {
    final viewModel = Provider.of<EventsViewModel>(context);

    if (viewModel.isInitialEventsError) {
      scheduleMicrotask(() => showError(context));
    }

    return ListView.separated(
      itemCount: viewModel.events.length,
      itemBuilder: (context, index) {
        final event = viewModel.events[index];
        return InkWell(
          child: _EventItem(event: event),
          onTap: () => viewModel.onEventSelected(event),
        );
      },
      separatorBuilder: (context, index) => Divider(),
    );
  }

  void showError(BuildContext context) {
    final snackbar = SnackBar(content: Text('Failed to load events. Please try again.'));
    Scaffold.of(context).showSnackBar(snackbar);
  }
}

class _EventItem extends StatelessWidget {
  const _EventItem({@required this.event}) : assert(event != null);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
              width: 100,
              child: event.imageUrls.isNotEmpty
                  ? CachedNetworkImage(imageUrl: event.imageUrls.first, fit: BoxFit.cover)
                  : Center(child: Icon(Icons.camera_alt))),
          SizedBox(width: 8),
          Expanded(child: Text(event.name)),
          SizedBox(width: 8),
          Icon((!event.isFavorite ?? false) ? Icons.favorite_border : Icons.favorite, color: Colors.red),
        ],
      ),
    );
  }
}
