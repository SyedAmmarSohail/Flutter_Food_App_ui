import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';

class CategoryListTile extends StatelessWidget {
  CategoryListTile({this.onPressed, this.onLongPressed, this.item});
  final Function onPressed;
  final Function onLongPressed;
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      onLongPress: onLongPressed,
      child: Container(
        margin: const EdgeInsets.only(right: 35.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 70.0,
              height: 70.0,
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                image: DecorationImage(
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
            Text(
              item['name'],
              style:
                  kLabelMediumTextStyle.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
