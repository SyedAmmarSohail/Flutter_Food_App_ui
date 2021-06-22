import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WidgetListView extends StatelessWidget {
  WidgetListView(
      {this.scrollDirection = Axis.horizontal,
      this.listItems,
      this.separator,
      this.listTile,
      this.physics = const AlwaysScrollableScrollPhysics()});

  final listItems;
  final Axis scrollDirection;
  final Widget separator;
  final Function listTile;
  ScrollPhysics physics;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: physics,
      scrollDirection: scrollDirection,
      separatorBuilder: (BuildContext context, int index) =>
          separator == null ? Container() : separator,
      itemBuilder: (context, index) {
        var item = listItems[index];
        return listTile(item);
      },
      itemCount: listItems.length,
    );
  }
}
