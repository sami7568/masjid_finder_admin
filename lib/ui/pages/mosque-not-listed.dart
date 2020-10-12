import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:masjid_finder/models/masjid-model.dart';
import 'package:masjid_finder/providers/masjid-provider.dart';
import 'package:masjid_finder/ui/custom_widgets/add-masjid-card.dart';
import 'package:masjid_finder/ui/custom_widgets/admin-app-bar.dart';
import 'package:masjid_finder/ui/custom_widgets/salam-card.dart';
import 'package:masjid_finder/ui/pages/add-masjid-screen1.dart';
import 'package:provider/provider.dart';

class MosqueNotListed extends StatefulWidget {
  @override
  _MosqueNotListedState createState() => _MosqueNotListedState();
}

class _MosqueNotListedState extends State<MosqueNotListed> {
  final gotData = false;
  final masjidAdded = false;

  @override
  void initState() {
    _getMasjidData();
    super.initState();
  }

  _getMasjidData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //AppBar
            AdminAppBar(),

            //Salam Card
            SalamCard(),

            //Add Mosque Card
            AddMasjidCard(
              onBtnPressed: () {
                Provider.of<MasjidProvider>(context, listen: false).masjid =
                    Masjid(position: GeoFirePoint(null, null));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddMasjidScreen1(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
