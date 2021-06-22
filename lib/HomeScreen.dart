import 'package:flutter/material.dart';
import 'package:flutter_app/values/color_constant.dart';
import 'package:flutter_app/widgets/CategoryListTile.dart';
import 'package:flutter_app/widgets/PopularListTile.dart';
import 'package:flutter_app/widgets/RecentListTile.dart';
import 'package:flutter_app/widgets/RestrauntsListTile.dart';
import 'package:flutter_app/widgets/WidgetListView.dart';
import 'package:flutter_app/widgets/WidgetSearch.dart';

import 'constants/constants.dart';

class HomeScreen extends StatelessWidget {
  static const String Id = 'HomeScreenId';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxHeight10,
                Text(
                  'Delivering to',
                  style: kLabelSmallTextStyle.copyWith(color: ColorConstant.greyIconColor),
                ),
                sizedBoxHeight5,
                Row(
                  children: [
                    Text(
                      'Current Location',
                      style: kLabelMediumTextStyle,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: ColorConstant.accentColor,
                    ),
                  ],
                ),
                sizedBoxHeight20,
                SearchWidget(
                  onChanged: (text) {
                  },
                  hint: 'Search Foods',
                ),
                sizedBoxHeight20,
                Container(
                  height: 110,
                  child: WidgetListView(
                      listItems: foodCategory,
                      scrollDirection: Axis.horizontal,
                      listTile: (item) {
                        return CategoryListTile(
                          item: item,
                          onPressed: () {},
                          onLongPressed: () {},
                        );
                      }),
                ),
                sizedBoxHeight30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Restaurents',
                      style: kLabelMediumTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View All',
                      style: kLabelSmallTextStyle.copyWith(
                          color: ColorConstant.accentColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          sizedBoxHeight20,
          WidgetListView(
              physics: NeverScrollableScrollPhysics(),
              listItems: restaurantsCategory,
              scrollDirection: Axis.vertical,
              listTile: (item) {
                return RestrauntsListTile(
                  item: item,
                  onPressed: () {},
                  onLongPressed: () {},
                );
              }),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                sizedBoxHeight30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most Popular',
                      style: kLabelMediumTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View All',
                      style: kLabelSmallTextStyle.copyWith(
                          color: ColorConstant.accentColor),
                    ),
                  ],
                ),
                sizedBoxHeight20,
                Container(
                  height: 240.0,
                  child: WidgetListView(
                      listItems: popularsCategory,
                      scrollDirection: Axis.horizontal,
                      listTile: (item) {
                        return PopularListTile(
                          item: item,
                          onPressed: () {},
                          onLongPressed: () {},
                        );
                      }),
                ),
                sizedBoxHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Items',
                      style: kLabelMediumTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View All',
                      style: kLabelSmallTextStyle.copyWith(
                          color: ColorConstant.accentColor),
                    ),
                  ],
                ),
                sizedBoxHeight20,
                WidgetListView(
                    physics: NeverScrollableScrollPhysics(),
                    listItems: recentCategory,
                    scrollDirection: Axis.vertical,
                    listTile: (item) {
                      return RecentListTile(
                        item: item,
                        onPressed: () {},
                        onLongPressed: () {},
                      );
                    }),
              ],
            ),
          )
        ],
      ),
//      ),
    );
  }
}
