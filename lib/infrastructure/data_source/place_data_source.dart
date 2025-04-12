import 'package:favourite_places/providers/user_places.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final placeDataSourceProvider = Provider<PlaceDataSource>((ref) {
  return PlaceDataSourceImpl(ref);
});

abstract interface class PlaceDataSource {
  void savePlace(BuildContext context, String title);
}

/// define methods @ data source files

final class PlaceDataSourceImpl implements PlaceDataSource {
  final Ref _ref;

  const PlaceDataSourceImpl(this._ref);

  @override
  void savePlace(BuildContext context, String title) {
    final enteredTitle = title;

    if (enteredTitle.isEmpty) {
      return;
    }
    _ref.read(userPlacesNotifier.notifier).addPlace(title);
    context.pop();
  }
}
