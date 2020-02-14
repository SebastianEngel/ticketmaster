import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ticketmaster/app_navigator.dart';
import 'package:ticketmaster/data/api/ticketmaster_api_client.dart';

final ServiceLocator locator = ServiceLocator._();

/// Convenience wrapper around GetIt.
class ServiceLocator<T> {
  ServiceLocator._();

  final GetIt _getIt = GetIt.instance;

  T call<T>() => _getIt<T>();

  void registerDependencies() {
    _getIt.registerSingleton<AppNavigator>(AppNavigator());
    _getIt.registerLazySingleton<TicketmasterApiClient>(() => TicketmasterApiClient(
          dio: Dio(),
          baseUrl: 'https://app.ticketmaster.com/discovery/v2',
          apiKey: 'q4cZQoGf9GFV3dZrUhmQPQyq5F0goOUU',
        ));
  }
}
