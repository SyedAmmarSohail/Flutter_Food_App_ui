import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/constants/constants.dart';
import 'package:flutter_app/values/color_constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.white));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'native_updater example',
      theme: ThemeData(brightness: Brightness.light),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart_outlined, color: ColorConstant.hintColor))
        ],
        title: Text(
          'Good Morning Akila',
          style: kLabelMediumTextStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.primaryColor,
      ),
      body: Center(
        child: HomeScreen(),
      ),
    );
  }
}
