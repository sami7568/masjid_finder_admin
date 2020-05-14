import 'package:flutter/material.dart';

class SalamCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF00A8E5),
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ///Assalam o Alaikum in Urdu
          Container(
            height: 35,
            width: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/static_assets/salam-text-urdu.png"),
              ),
            ),
          ),

          Container(
            child: RichText(
              text: TextSpan(
                text: 'Welcome to Masjid Finder, ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 11,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Imam Sahb',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
