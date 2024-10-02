import 'package:favorite_places_app/models/place.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  final List<Place> places;
  const PlacesList({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(
        child: Text('No places yet!'),
      );
    }
    return ListView.builder(itemBuilder: (context, index) {
      final place = places[index];
      return ListTile(
        title: Text(place.title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                )),
      );
    });
  }
}
