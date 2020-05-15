import 'package:masjid_finder/models/prayer-time-model.dart';

class Masjid {
  String name;
  String address;
  String geoLocation;
  bool isJamiaMasjid;
  PrayerTime prayerTime;
  int subscribers;

  Masjid({
    this.name = 'Masjid Name',
    this.address = 'Address here',
    this.geoLocation,
    this.isJamiaMasjid,
    this.subscribers,
    this.prayerTime,
  });

  Masjid.fromJson(masjidData) {
    this.name = masjidData['name'];
    this.address = masjidData['address'];
    this.geoLocation = masjidData['geoLocation'];
    this.isJamiaMasjid = masjidData['isJamiaMasjid'];
    this.subscribers = masjidData['subscribers'];
    this.prayerTime = PrayerTime.fromJSON(masjidData['prayerTime']);
  }

  toJson() {
    return {
      'name': this.name,
      'address': this.address,
      'geoLocation': this.geoLocation,
      'isJamiaMasjid': this.isJamiaMasjid,
      'subscribers': this.subscribers,
      'prayerTime': prayerTime.toJSON(),
    };
  }
}
