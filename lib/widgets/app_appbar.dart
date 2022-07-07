import 'package:flutter/material.dart';

Widget HomeAppBar(context){
  return  Column(
    children: <Widget>[
      Expanded(
        child: Center(
          child: InkWell(
            child: Image.asset(
              "assets/images/menus.png",
              scale: 11,
              color: Colors.black87,
            ),
            onTap: () => Scaffold.of(context).closeDrawer(),
          ),
        ),
      ),
    ],
  );
}