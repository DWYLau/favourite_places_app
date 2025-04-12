import 'package:favourite_places/infrastructure/repositories/place_repository.dart';
import 'package:favourite_places/models/repositories/place_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final placeService = Provider.autoDispose<PlaceService>(
  (ref) => PlaceService(ref),
);

final class PlaceService {
  final Ref _ref;

  const PlaceService(this._ref);

  PlaceRepository get _repository => _ref.read(placeRepositoryProvider);

  void savePlace(BuildContext context, String title) {
    _repository.savePlace(context, title);
  }
}
