import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uart_frontend/data/places.dart';
import 'package:uart_frontend/widgets/page.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Set<Marker> _markers = {};
  var places = GetPlaces();

  void _upsertMarker(Place place) {
    _markers.add(
      Marker(
        markerId: MarkerId(place.id),
        position: place.location,
        infoWindow: InfoWindow(
          title: place.name,
          snippet: place.description,
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueViolet,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    for (var place in places) {
      _upsertMarker(place);
    }

    return UArtPage(
      "UArt Map",
      Center(
        child: Row(
          children: <Widget>[
            Flexible(
              child: GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(50.4501, 30.5234),
                  zoom: 13.0,
                ),
                markers: _markers,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
