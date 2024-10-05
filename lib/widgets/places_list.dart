import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/screens/places_detail.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  final List<Place> places;
  const PlacesList({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text('No places yet!',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                )),
      );
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) {
        final place = places[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: FileImage(place.image),
          ),
          title: Text(
            place.title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return PlacesDetailScreen(place: place);
            }));
          },
        );
      },
    );
  }
}
