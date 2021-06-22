import 'package:flutter/material.dart';
import 'package:flutter_app/values/color_constant.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({this.onChanged, this.hint});

  final Function onChanged;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorConstant.lightGreyColor,
          contentPadding: EdgeInsets.zero,
          border: new OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: const BorderRadius.all(
              const Radius.circular(30.0),
            ),
          ),
          hintText: hint,
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
