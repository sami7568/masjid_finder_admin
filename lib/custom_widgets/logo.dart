import 'package:flutter/cupertino.dart';
import 'package:masjid_finder/constants/text-styles.dart';

class Logo extends StatelessWidget {
  final color;

  Logo({this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Masjid', style: urduLogoTS.copyWith(color: color)),
        Text('Finder', style: urduLogoTS.copyWith(fontSize: 12, color: color)),
      ],
    );
  }
}
