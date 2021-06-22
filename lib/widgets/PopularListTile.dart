import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';
import 'package:flutter_app/values/color_constant.dart';

class PopularListTile extends StatelessWidget {
  PopularListTile({this.onPressed, this.onLongPressed, this.item});

  final Function onPressed;
  final Function onLongPressed;
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 170,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
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
                    style: kLabelMediumTextStyle.copyWith(
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
                Text(item['detail'],
                    style: kLabelSmallTextStyle.copyWith(
                        color: ColorConstant.hintColor)),
                sizedBox5,
                Text(item['rating'],
                    style: kLabelSmallTextStyle.copyWith(color: Colors.red)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
