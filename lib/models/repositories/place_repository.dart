import 'package:flutter/widgets.dart';

abstract interface class PlaceRepository {
  void savePlace(BuildContext context, String title);
}
