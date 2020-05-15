import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/text-styles.dart';
import 'package:masjid_finder/models/masjid-model.dart';
import 'package:masjid_finder/services/firestore-helper.dart';
import 'package:masjid_finder/ui/custom_widgets/black-button.dart';
import 'package:masjid_finder/ui/pages/masjid-details-screen.dart';

import 'mosque-list-item.dart';

class MosquesResult extends StatefulWidget {
  @override
  _MosquesResultState createState() => _MosquesResultState();
}

class _MosquesResultState extends State<MosquesResult> {
  bool gotData = false, noData = false;
  List<Masjid> _mosquesList = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    FirestoreHelper().getAllMasjid().then((val) {
      _mosquesList = val;
      gotData = true;
      if (_mosquesList.length < 1) noData = true;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //First tabbar
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    print("Icon Pressed");
                  },
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text("Masjid Finder"),
                  ),
                ),
                Container(
                  width: 45,
                  height: 20,
                )
              ],
            ),

            //Assalam o Alaikum
            Container(
              margin: EdgeInsets.only(left: 34, top: 24, bottom: 32),
              child: Text(
                "Assalam o alykum :)",
                style: mainHeadingTextStyle,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(34, 8, 34, 0),
              child: Text(
                "We found the following mosques in your surroundings.",
                style: subHeadingLightTextStyle,
              ),
            ),

            gotData
                ? Column(
                    children: _mosquesList.map<Widget>((masjidInfo) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MasjidDetailsScreen(masjidInfo),
                            ),
                          );
                        },
                        child: MosqueListItem(
                          info: masjidInfo,
                        ),
                      );
                    }).toList(),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),

            // MosqueListItem(),

            //Show on map button
            Container(
              margin: EdgeInsets.fromLTRB(12, 32, 12, 12),
              child: blackButton(text: "SHOW ON MAP", onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
