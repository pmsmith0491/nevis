import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapRect extends StatefulWidget {
  @override
  _GoogleMapRectState createState() {
    return _GoogleMapRectState();
  }
}

class _GoogleMapRectState extends State<GoogleMapRect> {
  GoogleMapController mapController;
  final Map<String, Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.clear();
      final marker1 = Marker(
        markerId: MarkerId("ZiplineMedical"),
        position: LatLng(37.2872, -121.9500),
        infoWindow: InfoWindow(
          title: "Zipline Medical",
          snippet: "Delivering technology and medicine to enhance recovery.",
        ),
      );
      _markers["ZiplineMedical"] = marker1;
      final marker2 = Marker(
        markerId: MarkerId("Jumo"),
        position: LatLng(-33.92, 18.42),
        infoWindow: InfoWindow(
          title: "Jumo",
          snippet: "South Africa based mobile financial services platform.",
        ),
      );
      _markers["Jumo"] = marker2;
      final marker3 = Marker(
        markerId: MarkerId("AgBiome"),
        position: LatLng(35.99, -78.89),
        infoWindow: InfoWindow(
          title: "AgBiome",
          snippet: "Biological technology innovators and developers.",
        ),
      );
      _markers["AgBiome"] = marker3;
      final marker4 = Marker(
        markerId: MarkerId("senseFly"),
        position: LatLng(46.59, 6.6),
        infoWindow: InfoWindow(
          title: "senseFly",
          snippet: "Drone designing and manufacturing company.",
        ),
      );
      _markers["AgBiome"] = marker4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      SizedBox(
        width: MediaQuery.of(context).size.width, // or use fixed size like 200
        height: 300,
        child: GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _markers.values.toSet(),
            initialCameraPosition:
                CameraPosition(target: const LatLng(25, -25), zoom: 0.0),
            gestureRecognizers: Set()
              ..add(
                Factory<PanGestureRecognizer>(() => PanGestureRecognizer()),
              )
              ..add(
                Factory<VerticalDragGestureRecognizer>(
                    () => VerticalDragGestureRecognizer()),
              )),
      ),
    ]);
  }
}
