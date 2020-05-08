import 'package:flutter/material.dart';

Widget blackButton({String text = "", Function onPressed}) {
  return SizedBox(
    width: double.infinity,
    child: RaisedButton(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
      // padding: EdgeInsets.fromLTRB(13, 2, right, bottom),
      padding: EdgeInsets.only(top: 12, bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
      color: Colors.black,
      onPressed: onPressed,
    ),
  );
}
