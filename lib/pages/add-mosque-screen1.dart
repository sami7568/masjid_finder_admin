import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/colors.dart';
import 'package:masjid_finder/constants/text-styles.dart';
import 'package:masjid_finder/custom_widgets/custom-blue-outlined-button.dart';
import 'package:masjid_finder/custom_widgets/custom-blue-rounded-button.dart';
import 'package:masjid_finder/custom_widgets/custom-rounded-textfield.dart';
import 'package:masjid_finder/custom_widgets/custom-squre-textfield.dart';
import 'package:masjid_finder/custom_widgets/logo.dart';
import 'package:masjid_finder/main.dart';
import 'package:masjid_finder/pages/user-signup-screen.dart';

class AddMosqueScreen1 extends StatefulWidget {
  @override
  _AddMosqueScreen1State createState() => _AddMosqueScreen1State();
}

class _AddMosqueScreen1State extends State<AddMosqueScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
//        decoration: BoxDecoration(image: DecorationImage(image: )),
            color: greyBgColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _header(),
                _form(),
                SizedBox(height: 25),
                _continueBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _header() {
    return Container(
      margin: EdgeInsets.only(top: 22, bottom: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.subject, color: Colors.black),
          Logo(color: Colors.black),
        ],
      ),
    );
  }

  _form() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'List your masjid',
            style: subHeadingTextStyle.copyWith(color: mainThemeColor),
          ),
          SizedBox(height: 12),
          Text(
            'Step 1 of 2',
            style: TextStyle(
                color: Color(0xFF707070), fontFamily: 'Poppins', fontSize: 11),
          ),
          SizedBox(height: 32),
          CustomSquareTextField(
            hint: 'Spin Jumat',
            label: 'Masjid Name',
            iconData: Icons.email,
          ),
          CustomSquareTextField(
            hint: 'University Road Peshawar',
            label: 'Masjid Address',
          ),
          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (val) {},
                activeColor: mainThemeColor,
                checkColor: Colors.white,
                value: true,
              ),
              Text(
                'This is a jamia masjid',
                style: TextStyle(
                    color: Color(0xFF707070),
                    fontFamily: 'Poppins',
                    fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _continueBtn() {
    return RaisedButton(
      color: mainThemeColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Text(
          'Continue',
          style: blackBtnTS,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: () {},
    );
  }
}
