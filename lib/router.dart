import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'screens/add_place/add_place.dart';
import 'screens/places.dart';

part 'router.g.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: "/",
  routes: $appRoutes,
);

@TypedGoRoute<PlacesRoute>(path: '/')
class PlacesRoute extends GoRouteData {
  const PlacesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const PlacesScreen();
}

@TypedGoRoute<AddPlaceRoute>(path: '/add-place')
class AddPlaceRoute extends GoRouteData {
  const AddPlaceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AddPlaceScreen();
}
