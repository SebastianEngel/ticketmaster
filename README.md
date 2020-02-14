# ticketmaster

## Flutter Wrapper

The app used the [Flutter Wrapper](https://github.com/passsy/flutter_wrapper). Please use `./flutterw` to run any Flutter command.


## Architecture

For the general app architecture I devide my code into ui, domain and data layer. 

* UI layer: This layer contains everything that's visible to the user. The screens of the app, dialogs, widgets, etc. In order to separate the presentation / layout from the view logic I generally use the view model or BLoC pattern. Therefore this layer also contains the ViewModel classes.
  
  Up until recently I implemented the view models with observable properties / streams. The widgets contained in a screen then subscribed to these observable properties via StreamBuilders. The advantage of this implementation is that only specific parts of the UI need to rebuild when a change occurs. On the other side I experienced that this requires more code and nested layout hierarchies, which makes the code less maintainable. I then came to the conclusion that well maintainable code is more valuable than these little performance optimizations. I find this especially true when the code needs to be handed over to and be maintained by the team alone in the future. Because of that I switched from stream based view models to ChangeNotifier implementations. This means, that whenever the view model changes, it notifies the view to rebuild.
  
  I recently also played with flutter_bloc. I like about it that it enforces the code to handle every state the UI can be in at any time and that this is a well known package in the community, meaning that many developers know how to structure their app with it. On the other side I found that again, it requires too much code for simply projects. I would consider working with flutter_bloc again, but currently still keep it simply with ChangeNotifier-based view models and the "provider" package.
* Data layer: In the data layer I keep all the data related classes, like API clients, JSON models, repositories, etc.
* Domain layer: This layer holds service classes (or BLoCs) that contain real business logic. For simple apps this layer is often not even necessary.

### Dependency injection / service locator

In order to make the code testable I use the dependency injection principle. This means that all dependencies of a class that need to be exchangable are given into it  as constructor parameters. This makes it possible to use different API endpoints for development, staging and production endpoints or to exchange actual class implementations with mocks (e.g. for unit testing). 

To build up the object graph I use the "get_it" package. "get_it" is a service locator library that makes it super easy to register and look up dependencies.

In my first Flutter projects I was using "provider" for dependency lookups as well, but also found that this requires again too much boilerplate and makes the code less readable.



### Navigation

Sometimes view logic requires navigating to another screen. Looking up a navigator requires access to the BuildContext which is only available in widgets. In order to not make the widgets handle the navigation, I encapsulate the navigation logic into its own class that gets the app's NavigatorState on app start. That way, the custom AppNavigator can be handed into view models and is now also mockable.