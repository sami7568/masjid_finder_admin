import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/colors.dart';

class CustomBlueOutlinedButton extends StatelessWidget {
  final onPressed;
  final text;

  CustomBlueOutlinedButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(
          text ?? '',
          style: TextStyle(color: mainThemeColor),
        ),
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: mainThemeColor),
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
    );
  }
}
