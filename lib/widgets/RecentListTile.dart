import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';

class RecentListTile extends StatelessWidget {
  RecentListTile({this.onPressed, this.onLongPressed, this.item});

  final Function onPressed;
  final Function onLongPressed;
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      onLongPress: onLongPressed,
      child: Container(
        margin: const EdgeInsets.only(right: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    item['image'],
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.grey[300],
                    offset: Offset(6.0, 6.0),
                  )
                ],
              ),
            ),
            sizedBox20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  item['name'],
                  style: kLabelBelowMediumTextStyle.copyWith(
                      fontWeight: FontWeight.bold),
                ),
                sizedBoxHeight5,
                Text(
                  item['detail'],
                  style: kLabelSmallTextStyle,
                ),
                sizedBoxHeight5,
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 15.0,
                    ),
                    sizedBoxHeight5,
                    Text(
                      item['rating'],
                      style: kLabelSmallTextStyle,
                    ),
                    sizedBoxHeight5,
                    Text(
                      item['ratingDetail'],
                      style: kLabelSmallTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
