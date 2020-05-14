import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:masjid_finder/models/masjid-model.dart';
import 'package:masjid_finder/ui/custom_widgets/custom-bottom-sheet.dart';
import 'package:masjid_finder/ui/custom_widgets/logo.dart';

class ShowOnMapsScreen extends StatefulWidget {
  @override
  _ShowOnMapsScreenState createState() => _ShowOnMapsScreenState();
}

class _ShowOnMapsScreenState extends State<ShowOnMapsScreen> {
  final baseLocation = LatLng(34.005679, 71.568206);
  var initialCameraPosition;
  var dummyMarker;
  var markers = Set<Marker>();
  var smallMasjidPin;
  var jamiaMasjidPin;
  var dummyMasjid = Masjid(name: 'Spin Jumat', address: 'University Road');
  @override
  void initState() {
    initialCameraPosition = CameraPosition(target: baseLocation, zoom: 10);
    dummyMarker = Marker(
      icon: BitmapDescriptor.defaultMarker,
      position: baseLocation,
      markerId: MarkerId(
        baseLocation.toString(),
      ),
      onTap: _showBottomSheet,
    );
    markers.add(dummyMarker);
    super.initState();
  }

  _setCustomMapPins() async {
    // Todo: Change Asset name
    smallMasjidPin =
        BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'asset/pin.png');

    // Todo: Change Asset name
    jamiaMasjidPin =
        BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'asset/pin.png');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _body(),
      ),
    );
  }

  _body() {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: _maps(),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: _header(),
        ),
      ],
    );
  }

  _maps() {
    return GoogleMap(
      initialCameraPosition: initialCameraPosition,
      markers: markers,
    );
  }

  _header() {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.subject, color: Colors.black),
          Logo(color: Colors.black),
          Container(),
        ],
      ),
    );
  }

  _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => CustomBottomSheet(masjidData: dummyMasjid,),
    );
  }
}
