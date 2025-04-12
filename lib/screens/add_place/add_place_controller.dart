import 'package:favourite_places/application/service/place_service.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final addPlaceControllerProvider = Provider.autoDispose(
  (ref) => _AddPlaceController(ref),
);

final class _AddPlaceController {
  final Ref _ref;

  const _AddPlaceController(this._ref);

  PlaceService get _placeService => _ref.read(placeService);

  void savePlace(BuildContext context, String title) {
    _placeService.savePlace(context, title);
  }
}
