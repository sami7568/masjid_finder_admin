import 'package:flutter/material.dart';
import 'package:masjid_finder/constants/text-styles.dart';
import 'package:masjid_finder/custom_widgets/cusom-black-button.dart';
import 'package:masjid_finder/custom_widgets/cusom-black-outlined-button.dart';
import 'package:masjid_finder/models/masjid-model.dart';
import 'package:masjid_finder/widget.dart/black-button.dart';

class CustomBottomSheet extends StatelessWidget {
  final Masjid masjidData;

  CustomBottomSheet({this.masjidData});

  @override
  Widget build(BuildContext context) {
//    return BottomSheet(
//      enableDrag: true,
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.only(
//          topLeft: Radius.circular(20),
//          topRight: Radius.circular(20),
//        ),
//      ),
//      backgroundColor: Colors.red,
//      builder: (context) => _contents(),
//      onClosing: () {},
//    );
//  }
//
//  _contents() {
//    return Container(
//      height: 200,
//      decoration: BoxDecoration(
//        color: Colors.red,
//        borderRadius: BorderRadius.only(
//          topRight: Radius.circular(20),
//          topLeft: Radius.circular(20),
//        ),
//      ),
//      child: Column(
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.fromLTRB(150, 10, 150, 30),
//            child: Divider(thickness: 4, color: Colors.grey),
//          ),
//          Row(
//            children: <Widget>[
//              Column(
//                children: <Widget>[
//                  Text(masjidData.name ?? '', style: subHeadingTextStyle),
//                  Text(masjidData.address ?? '', style: mainBodyTextStyle),
//                ],
//              ),
//              CustomBlackButton(
//                child: Text('DETAILS', style: blackBtnTS),
//                onPressed: () {},
//              ),
//              CustomBlackOutlinedButton(
//                child: Text('DIRECTIONS',
//                    style: blackBtnTS.copyWith(color: Colors.black)),
//                onPressed: () {},
//              )
//            ],
//          )
//        ],
//      ),
//    );

    return Container(
      height: 120,
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(130, 10, 130, 20),
              child: Divider(thickness: 4, color: Color(0xFFCAD1DE)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(masjidData.name ?? '', style: subHeadingTextStyle),
                    SizedBox(height: 5),
                    Text(masjidData.address ?? '', style: mainBodyTextStyle),
                  ],
                ),
                SizedBox(width: 20),
                CustomBlackButton(
                  child: Text('DETAILS', style: blackBtnTS),
                  onPressed: () {},
                ),
                CustomBlackOutlinedButton(
                  child: Text('DIRECTIONS',
                      style: blackBtnTS.copyWith(color: Colors.black)),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
