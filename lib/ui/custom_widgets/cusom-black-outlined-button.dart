import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/text-styles.dart';

class CustomBlackOutlinedButton extends StatelessWidget {
  final child;
  final onPressed;

  CustomBlackOutlinedButton({this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: child,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(
          color: Colors.black,
          width: 2,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
