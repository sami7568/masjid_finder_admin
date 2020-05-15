import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:masjid_finder/models/masjid-model.dart';

class FirestoreHelper {
  var _db = Firestore.instance;
  Future<List<Masjid>> getAllMasjid() {
    List<Masjid> _list = [];
    return _db.collection("masjid").getDocuments().then((querySnapshot) {
      querySnapshot.documents.forEach((f) {
        Masjid newMasjid = new Masjid.fromJson(f);
        _list.add(newMasjid);
      });
      return _list;
    });
  }
}
