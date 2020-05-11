import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/text-styles.dart';

Widget mosqueListItem(
    {String name = '', String address = '', bool isJamia = false}) {
  return Container(
    height: 84,
    margin: EdgeInsets.fromLTRB(12, 7, 12, 7),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(8, 45, 31, 80),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ]),
    child: Row(
      children: <Widget>[
        //Mosque Icon
        Container(
          margin: EdgeInsets.only(left: 19),
          height: 49,
          width: 45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/static_assets/mosque-icon.png"),
            ),
          ),
        ),

        //Mosque Info
        Container(
          margin: EdgeInsets.only(left: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  name,
                  style: mainBodyTextStyle,
                ),
              ),
              Container(
                child: Text(
                  address,
                  style: subBodyLightTextStyle,
                ),
              ),
            ],
          ),
        ),

        Spacer(),
        isJamia
            ? Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/static_assets/isJamia.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: 42,
                    )
                  ],
                ),
              )
            : Container()
      ],
    ),
  );
}
