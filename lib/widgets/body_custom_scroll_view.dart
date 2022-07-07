import 'package:flutter/material.dart';
import 'package:task_planner_app/widgets/radial_pointer.dart';

import 'app_sliverlist.dart';

Widget HomeCustomScroll(context){
  return CustomScrollView(
    slivers: [
      Container(
        child: SliverAppBar(

          leading: Builder(
            builder: (context) => Container(
              margin: EdgeInsets.only(top: 20, left: 5),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          child: Image.asset(
                            "assets/images/menus.png",
                            scale: 11,
                            color: Colors.black87,
                          ),
                          onTap: () => Scaffold.of(context).openDrawer(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          snap: false,
          pinned: true,
          floating: true,
          toolbarHeight: 100,
          expandedHeight: 230,
          flexibleSpace: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFaaa60),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            child: FlexibleSpaceBar(
              // centerTitle: true,
              // collapseMode:CollapseMode.pin,
              title: Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 70,
                        width: 65,
                        child: profilePointer(),
                      ),
                    ),
                    Container(
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Phillip McCoy",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Project Manager",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
        ),
      ),
      SliverList(
        // physics: BouncingScrollPhysics(),

        delegate: SliverChildBuilderDelegate(

              (context, index) => sliverList(),
        ),
      ),
    ],
  );
}