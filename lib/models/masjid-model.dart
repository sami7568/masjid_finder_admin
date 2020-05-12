import 'dart:convert';

class Masjid {
  var name;
  var address;
  var geoLocation;
  var isJamiaMasjid;

  Masjid({this.name = 'Masjid Name', this.address = 'Address here', this.geoLocation, this.isJamiaMasjid});

  Masjid.fromJson(masjidData) {
    this.name = masjidData['name'];
    this.address = masjidData['address'];
    this.geoLocation = masjidData['geoLocation'];
    this.isJamiaMasjid = masjidData['isJamiaMasjid'];
  }

  toJson() {
    return {
      'name': this.name,
      'address': this.address,
      'geoLocation': this.geoLocation,
      'isJamiaMasjid': this.isJamiaMasjid,
    };
  }
}
