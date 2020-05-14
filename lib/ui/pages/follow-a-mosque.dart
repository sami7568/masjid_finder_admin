import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/text-styles.dart';
import 'package:masjid_finder/ui/custom_widgets/admin-app-bar.dart';

import 'mosque-list-item.dart';
class FollowAMosque extends StatefulWidget {
  @override
  _FollowAMosqueState createState() => _FollowAMosqueState();
}

class _FollowAMosqueState extends State<FollowAMosque> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            //AppBar
            AdminAppBar(),

            //Text
            Container(
              margin: EdgeInsets.all(24),
              child: Text(
                "Follow a Jamia Masjid to synchronise your prayer timings with theirs.",
                style: subHeadingLightTextStyle,
              ),
            ),

            MosqueListItem(
              name: "Spin Jumat",
              address: 'Univesity Road',
              follow: true,
              onFollowPressed: () {},
            ),
            MosqueListItem(
              name: "KMC Mosque",
              address: 'Univesity of Peshawar',
              follow: true,
              onFollowPressed: () {},
            ),
            MosqueListItem(
              name: "UET Mosque",
              address: 'UET Peshawar',
              follow: true,
              onFollowPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
