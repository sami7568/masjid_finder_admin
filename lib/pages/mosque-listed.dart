import 'package:flutter/material.dart';
import 'package:masjid_finder/custom_widgets/admin-app-bar.dart';
import 'package:masjid_finder/custom_widgets/mosque-listed-tile.dart';
import 'package:masjid_finder/custom_widgets/salam-card.dart';

class MosqueListed extends StatefulWidget {
  @override
  _MosqueListedState createState() => _MosqueListedState();
}

class _MosqueListedState extends State<MosqueListed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          //AppBar
          AdminAppBar(),

          //Salam Card
          SalamCard(),

          ///first and second tile
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                MosqueListedTile(
                  icon: "timing-icon",
                  text: "Add prayer timings and other details.",
                  buttonText: "Masjid Profile",
                  onButtonPressed: () {},
                ),
                Spacer(),
                MosqueListedTile(
                  icon: "masjid-icon",
                  text: "Synchronise time with a Jamia Masjid.",
                  buttonText: "Follow Masjid",
                  onButtonPressed: () {},
                ),
              ],
            ),
          ),

          ///third tile
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                MosqueListedTile(
                  icon: "followers-icon",
                  text: "View people who follow your masjid.",
                  buttonText: "View Subscribers",
                  onButtonPressed: () {},
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
