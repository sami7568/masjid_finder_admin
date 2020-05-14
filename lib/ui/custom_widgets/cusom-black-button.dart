import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/text-styles.dart';

class CustomBlackButton extends StatelessWidget {
  final child;
  final onPressed;

  CustomBlackButton({this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.black,
        child: child,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: onPressed,
    );
  }
}
