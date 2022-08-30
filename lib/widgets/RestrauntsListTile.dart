import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';
import 'package:flutter_app/values/color_constant.dart';

class RestrauntsListTile extends StatelessWidget {
  RestrauntsListTile({this.onPressed, this.onLongPressed, this.item});

  final Function onPressed;
  final Function onLongPressed;
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          sizedBox15,
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(item['image']),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(item['name'],
                    style: kLabelBelowMediumTextStyle.copyWith(
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5.0,
              left: 5.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 15.0,
                ),
                sizedBox5,
                Text(item['rating'],
                    style: kLabelSmallTextStyle.copyWith(color: Colors.red)),
                sizedBox5,
                Text(item['detail'],
                    style: kLabelSmallTextStyle.copyWith(
                        color: ColorConstant.hintColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
