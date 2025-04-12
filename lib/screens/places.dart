import 'package:favourite_places/providers/user_places.dart';
import 'package:favourite_places/router.dart';
import 'package:favourite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlacesScreen extends HookConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesNotifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your places"),
        actions: [
          IconButton(
              onPressed: () {
                const AddPlaceRoute().push(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: PlacesList(places: userPlaces),
    );
  }
}
