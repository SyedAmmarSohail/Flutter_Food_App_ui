import 'package:flutter/material.dart';
import 'package:flutter_app/values/color_constant.dart';
import 'package:flutter_app/widgets/WidgetListView.dart';

const int success = 200;

const sizedBox5 = SizedBox(
  width: 5,
);
const sizedBox10 = SizedBox(
  width: 10,
);
const sizedBox15 = SizedBox(
  width: 15,
);
const sizedBox20 = SizedBox(
  width: 20,
);

const sizedBoxHeight5 = SizedBox(
  height: 5,
);
const sizedBoxHeight10 = SizedBox(
  height: 10,
);
const sizedBoxHeight15 = SizedBox(
  height: 15,
);
const sizedBoxHeight20 = SizedBox(
  height: 20,
);
const sizedBoxHeight25 = SizedBox(
  height: 25,
);
const sizedBoxHeight30 = SizedBox(
  height: 30,
);

var kLabelSmallTextStyle =
    TextStyle(fontSize: 12.0, color: ColorConstant.blackTextColor);
var kLabelBelowMediumTextStyle =
    TextStyle(fontSize: 14.0, color: ColorConstant.blackTextColor);
var kLabelMediumTextStyle =
    TextStyle(fontSize: 18.0, color: ColorConstant.blackTextColor);
var kLabelAboveMediumTextStyle =
    TextStyle(fontSize: 20.0, color: ColorConstant.blackTextColor);
var kLabelLargeTextStyle = TextStyle(
  fontSize: 24.0,
  color: ColorConstant.blackTextColor,
);

var kMultiSelectedDropDownUnderStyle = BoxDecoration(
  border: Border(
    bottom: BorderSide(
      color: ColorConstant.lightGreyColor,
      width: 1,
    ),
  ),
);

var kLabelExtraLargeTextStyle =
    TextStyle(fontSize: 30.0, color: Colors.black87);

final RegExp emailValidator = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const List<String> countryList = [
  'Pakistan',
  'England',
  'Iran',
  'Turkey',
];

final List<Map<String, String>> foodCategory = [
  {
    'name': 'Offers',
    'image': 'assets/offers.png',
  },
  {
    'name': 'Sri Lankan',
    'image': 'assets/srilankan.png',
  },
  {
    'name': 'Italian',
    'image': 'assets/italian.png',
  },
  {
    'name': 'Pakistani',
    'image': 'assets/indian.png',
  },
  {
    'name': 'Indian',
    'image': 'assets/indian.png',
  }
];

final List<Map<String, String>> restaurantsCategory = [
  {
    'name': 'Minute by tuk tuk',
    'image': 'assets/pizza.png',
    'rating': '4.9',
    'detail': '(124 ratings) Café Western Food'
  },
  {
    'name': 'Café de Noir',
    'image': 'assets/hotnroll.png',
    'rating': '4.9',
    'detail': '(124 ratings) Café Western Food'
  },
  {
    'name': 'Bakes by Tella',
    'image': 'assets/bakers.png',
    'rating': '4.9',
    'detail': '(124 ratings) Café Western Food'
  },
];

final List<Map<String, String>> popularsCategory = [
  {
    'name': 'Café De Bambaa',
    'image': 'assets/pan_pizza.png',
    'rating': '4.9',
    'detail': 'Café Western Food'
  },
  {
    'name': 'Burger by Bella',
    'image': 'assets/bread.png',
    'rating': '4.9',
    'detail': 'Café Western Food'
  },
  {
    'name': 'Café De Bambaa',
    'image': 'assets/pan_pizza.png',
    'rating': '4.9',
    'detail': 'Café Western Food'
  },
];
final List<Map<String, String>> recentCategory = [
  {
    'name': 'Mulberry Pizza by Josh',
    'image': 'assets/pan_pizza.png',
    'rating': '4.9',
    'ratingDetail': '(124 Ratings)',
    'detail': 'Café Western Food'
  },
  {
    'name': 'Barita',
    'image': 'assets/cafe_beans.png',
    'rating': '4.9',
    'ratingDetail': '(124 Ratings)',
    'detail': 'Café Western Food'
  },
  {
    'name': 'Pizza Rush Hour',
    'image': 'assets/pizza.png',
    'rating': '4.9',
    'ratingDetail': '(124 Ratings)',
    'detail': 'Café Western Food'
  },
];

final List<Map<String, String>> menu = [
  {
    'name': 'Food',
    'image': 'assets/pan_pizza.png',
    'items': '12 item',
  },
  {
    'name': 'Beverages',
    'image': 'assets/bread.png',
    'items': '200 items',
  },
  {
    'name': 'Desserts',
    'image': 'assets/pan_pizza.png',
    'items': '155 items',
  },
  {
    'name': 'Promotions',
    'image': 'assets/pan_pizza.png',
    'items': '26 items',
  },
];

final List<Map<String, String>> subMenu = [
  {
    'name': 'French Apple Pie',
    'image': 'assets/apple_pie.png',
    'rating': '4.9',
    'detail': '(124 ratings) Café Western Food'
  },
  {
    'name': 'Dark Chocolate Cake',
    'image': 'assets/dark_chocolate.png',
    'rating': '4.9',
    'detail': '(124 ratings) Café Western Food'
  },
  {
    'name': 'Street Shake',
    'image': 'assets/street_shake.png',
    'rating': '4.9',
    'detail': '(124 ratings) Café Western Food'
  },
  {
    'name': 'Fudgy Chewy Brownies',
    'image': 'assets/brownies.png',
    'rating': '4.9',
    'detail': '(124 ratings) Café Western Food'
  },
];
