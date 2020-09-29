
import 'package:flutter/material.dart';

AppBar buildAppBar() {

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: Padding(
      padding: const EdgeInsets.only(left :8.0),
      child: Transform.scale(
        scale: 0.9,
        child: IconButton(
          icon: Image.asset('assets/icons/menu1.png'),
          onPressed: () => scaffoldKey.currentState.openDrawer(),
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Transform.scale(
          scale: 0.8,
          child: IconButton(
            icon: Image.asset('assets/icons/sopping.png'),
            onPressed: (){},
          ),
        ),
      )
    ],
  );
}