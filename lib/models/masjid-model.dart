import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:masjid_finder/models/prayer-time-model.dart';

class Masjid {
  String name;
  String address;
  GeoFirePoint geoLocation;
  bool isJamiaMasjid;
  PrayerTime prayerTime;
  int subscribers;
  String status;
  String firestoreId;

  Masjid({
    this.name = 'Masjid Name',
    this.address = 'Address here',
    this.geoLocation,
    this.isJamiaMasjid,
    this.subscribers,
    this.status = 'applied',
  }) {
    this.prayerTime = PrayerTime();
  }

  Masjid.fromJson(DocumentSnapshot snapshot) {
    final masjidData = snapshot.data;
    this.firestoreId = snapshot.reference.documentID;
    this.name = masjidData['name'];
    this.address = masjidData['address'];
    this.geoLocation = GeoFirePoint(
      masjidData['geoLocation']['geopoint'].latitude,
      masjidData['geoLocation']['geopoint'].longitude,
    );
    this.isJamiaMasjid = masjidData['isJamiaMasjid'];
    this.subscribers = masjidData['subscribers'];
    this.prayerTime = PrayerTime.fromJSON(masjidData['prayerTime']);
    this.status = masjidData['status'];
    print(this.toJson());
  }

  toJson() {
    return {
      'name': this.name,
      'address': this.address,
      'geoLocation': this.geoLocation.data,
      'isJamiaMasjid': this.isJamiaMasjid,
      'subscribers': this.subscribers,
      'status': this.status,
      'prayerTime': prayerTime.toJSON(),
    };
  }
}
