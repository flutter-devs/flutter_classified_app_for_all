import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var isDesktop = width > height;

    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              width: 2,
              color: Colors.pinkAccent,
            )
          ],
        ),
      ),
    );
  }
}
