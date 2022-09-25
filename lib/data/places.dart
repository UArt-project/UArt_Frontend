import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place {
  final String id;
  final LatLng location;
  final String name;
  final String description;

  Place(this.id, this.location, this.name, this.description);
}

List<Place> GetPlaces() {
  var places = [
    Place(
      '1',
      const LatLng(50.446667, 30.5125),
      'Opera House',
      'The National Opera of Ukraine is a national opera company in Kiev, Ukraine. It was founded in 1936 as the Kiev Opera House, and was renamed the National Opera of Ukraine in 1991.',
    ),
    Place(
      '2',
      const LatLng(50.445, 30.518611),
      'Lesya Ukrainka National Academic Theater',
      'Lesya Ukrainka National Academic Theater is a theater in Kyiv, Ukraine. It is located in a building known as Bourgogne Theatre. Founded in 1926',
    )
  ];

  return places;
}
