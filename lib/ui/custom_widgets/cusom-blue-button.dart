import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/colors.dart';
import 'package:masjid_finder/constants/text-styles.dart';

class CustomBlueButton extends StatelessWidget {
  final child;
  final onPressed;

  CustomBlueButton({this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: mainThemeColor,
      child: child,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      onPressed: onPressed,
    );
  }
}
