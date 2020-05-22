import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DirectionsHelper {
  navigate({LatLng origin, LatLng destination}) async {
    String url =
        'https://www.google.com/maps/dir/?api=1&origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}';
    final status = await canLaunch(url);
    if (status) launch(url);
  }
}
