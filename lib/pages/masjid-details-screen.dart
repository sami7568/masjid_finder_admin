import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/colors.dart';
import 'package:masjid_finder/constants/text-styles.dart';

class MasjidDetailsScreen extends StatelessWidget {
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
        _locationInfo(),
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
          Column(
            children: <Widget>[
              Text('Masjid', style: urduLogoTS),
              Text('Finder', style: urduLogoTS.copyWith(fontSize: 12)),
            ],
          ),
          Container(),
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
          RaisedButton(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Icon(Icons.notifications, color: Colors.white, size: 17),
                SizedBox(width: 4),
                Text('SUBSCRIBE', style: blackBtnTS),
              ],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  _locationInfo() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 15, 32, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Location', style: subHeadingTextStyle),
              SizedBox(height: 10),
              Text('University Road, Peshawar', style: mainBodyTextStyle)
            ],
          ),
          FlatButton(
            child: Text(
              'DIRECTIONS',
              style: blackBtnTS.copyWith(color: Colors.black),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  _prayerTimings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: Text('Prayer Timings', style: subHeadingTextStyle),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, bottom: 10, top: 9),
          child: Text('Subscribe to get notified of change in timings'),
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
          Text(
            '4:30 AM',
            style: namazTimeTS,
          )
        ],
      ),
    );
  }
}
