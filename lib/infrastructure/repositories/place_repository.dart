import 'package:favourite_places/infrastructure/data_source/place_data_source.dart';
import 'package:favourite_places/models/repositories/place_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final placeRepositoryProvider = Provider.autoDispose<PlaceRepository>(
  (ref) => PlaceRepositoryImpl(ref),
);

/// get method from data source

final class PlaceRepositoryImpl implements PlaceRepository {
  final Ref _ref;

  const PlaceRepositoryImpl(this._ref);

  PlaceDataSource get _dataSource => _ref.read(placeDataSourceProvider);

  @override
  void savePlace(BuildContext context, String title) {
    _dataSource.savePlace(context, title);
  }
}
