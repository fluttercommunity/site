import 'dart:async';
import 'dart:html' hide Navigator;

import 'package:jaspr/components.dart';

class Navigator extends StatefulComponent {
  const Navigator({
    super.key,
    required this.initialRoute,
    required this.routes,
    required this.onUnknownRoute,
  });

  final String initialRoute;
  final Map<String, SingleComponentBuilder> routes;
  final SingleComponentBuilder onUnknownRoute;

  static NavigatorState of(BuildContext context) {
    return context.findAncestorStateOfType<NavigatorState>()!;
  }

  @override
  State<Navigator> createState() => NavigatorState();
}

typedef NavigatorRoute = ({String path, SingleComponentBuilder builder});

class NavigatorState extends State<Navigator> {
  late StreamSubscription<PopStateEvent> _popSub;

  late NavigatorRoute? currentRoute;

  NavigatorRoute? findRoute(String path) {
    final builder = component.routes[path];
    if (builder == null) {
      return null;
    }
    return (path: path, builder: builder);
  }

  @override
  void initState() {
    super.initState();
    final initialRoute = Uri.parse(window.location.href).path;
    currentRoute = findRoute(initialRoute);
    if (currentRoute case NavigatorRoute currentRoute) {
      window.history.replaceState(currentRoute.path, '', currentRoute.path);
    }
    _popSub = window.onPopState.listen(_onPop);
  }

  @override
  void dispose() {
    _popSub.cancel();
    super.dispose();
  }

  void _onPop(PopStateEvent event) {
    setState(() {
      currentRoute = findRoute(event.state as String);
    });
  }

  void push(String href) {
    final path = Uri.parse(href).path;
    final route = findRoute(path);
    if (route == null) {
      throw Exception('No route with name: $path');
    }
    window.history.pushState(path, '', href);
    setState(() {
      currentRoute = route;
    });
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // print('currentRoute: $currentRoute');
    if (currentRoute == null) {
      yield component.onUnknownRoute(context);
    } else {
      yield currentRoute!.builder(context);
    }
  }
}
