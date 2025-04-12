// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $placesRoute,
      $addPlaceRoute,
    ];

RouteBase get $placesRoute => GoRouteData.$route(
      path: '/',
      factory: $PlacesRouteExtension._fromState,
    );

extension $PlacesRouteExtension on PlacesRoute {
  static PlacesRoute _fromState(GoRouterState state) => const PlacesRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $addPlaceRoute => GoRouteData.$route(
      path: '/add-place',
      factory: $AddPlaceRouteExtension._fromState,
    );

extension $AddPlaceRouteExtension on AddPlaceRoute {
  static AddPlaceRoute _fromState(GoRouterState state) => const AddPlaceRoute();

  String get location => GoRouteData.$location(
        '/add-place',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
