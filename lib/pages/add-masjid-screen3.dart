import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/colors.dart';
import 'package:masjid_finder/constants/text-styles.dart';
import 'package:masjid_finder/custom_widgets/cusom-black-button.dart';
import 'package:masjid_finder/custom_widgets/cusom-black-outlined-button.dart';
import 'package:masjid_finder/custom_widgets/logo.dart';

class AddMasjidScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: _body(),
        ),
      ),
      backgroundColor: greyBgColor,
    );
  }

  _body() {
    return Column(
      children: <Widget>[
        _header(),
        _basicInfo(),
        _prayerTimings(),
      ],
    );
  }

  _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.subject,
            color: mainThemeColor,
          ),
          Logo(color: Colors.black),
        ],
      ),
    );
  }

  _basicInfo() {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 32),
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Spin Jumat', style: subHeadingTextStyle),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: orangeColor, width: 2)),
                child: Text(
                  'Jamia Masjid',
                  style: jamiaMasjidTS,
                ),
              ),
            ],
          ),
          CustomBlackButton(
            child: Row(
              children: <Widget>[
                Text('EDIT PROFILE', style: blackBtnTS),
              ],
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  _prayerTimings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 40),
          child: Text('Change Prayer Timings', style: subHeadingTextStyle),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, bottom: 10, top: 9),
          child: Text('Tap a prayer tile to change its timings.'),
        ),
        namazTile(),
        namazTile(),
        namazTile(),
        namazTile(),
        namazTile(),
        SizedBox(height: 20),
      ],
    );
  }

  namazTile({icon, namazType, time}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.wb_sunny, color: timeColor),
              SizedBox(width: 15),
              Text('Fajr', style: namazTypeTS),
            ],
          ),
          Row(children: <Widget>[
            Icon(Icons.mode_edit, color: Colors.black),
            SizedBox(width: 4),
            Text(
              '4:30 AM',
              style: namazTimeTS,
            )
          ]),
        ],
      ),
    );
  }
}
