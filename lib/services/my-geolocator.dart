import 'package:geolocator/geolocator.dart';

class MyGeolocator {
  checkPermission() async {
    GeolocationStatus geolocationStatus =
        await Geolocator().checkGeolocationPermissionStatus();
    print(geolocationStatus);
    return geolocationStatus;
  }
}
