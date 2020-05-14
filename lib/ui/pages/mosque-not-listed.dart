import 'package:flutter/material.dart';
import 'package:masjid_finder/ui/custom_widgets/add-masjid-card.dart';
import 'package:masjid_finder/ui/custom_widgets/admin-app-bar.dart';
import 'package:masjid_finder/ui/custom_widgets/salam-card.dart';

class MosqueNotListed extends StatefulWidget {
  @override
  _MosqueNotListedState createState() => _MosqueNotListedState();
}

class _MosqueNotListedState extends State<MosqueNotListed> {
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
            AddMasjidCard()
          ],
        ),
      ),
    );
  }
}
