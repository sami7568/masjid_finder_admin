import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/text-styles.dart';

class LocationAccessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 313,
      height: 183,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(27))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //Location Access header
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Text(
              "Location Access Needed.",
              style: subHeadingTextStyle,
            ),
          ),

          //Location access body
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "Please turn on your location services to find mosques in your surroundings.",
              textAlign: TextAlign.center,
              style: subBodyLightTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
