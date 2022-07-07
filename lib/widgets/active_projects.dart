import 'package:flutter/material.dart';
import 'package:task_planner_app/widgets/radial_pointer.dart';

Widget ActiveProjects(){
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(bottom: 25, left: 35, top: 25),
        child: Text(
          "Active projects",
          style:
          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        margin: EdgeInsets.all(15),
        child: GridView.count(
          physics: BouncingScrollPhysics(),
          crossAxisSpacing: 20,
          shrinkWrap: true,
          mainAxisSpacing: 20,
          childAspectRatio: 0.8,

          // scrollDirection:Axis.vertical ,
          crossAxisCount: 2,
          children: [
            Container(
              // margin: EdgeInsets.only(left: 25, top: 20),
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                height: 300,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 35, left: 50),
                        width: 100,
                        height: 100,
                        child: radialPointer(50),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Text(
                          "Medical App",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white70),
                        ),
                      ),
                      Text(
                        "4 hours progress",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(left: 25, top: 20),
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                height: 300,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 35, left: 50),
                        width: 100,
                        height: 100,
                        child: radialPointer(70),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Text(
                          "Sport App",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white70),
                        ),
                      ),
                      Text(
                        "40 hours progress",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white30),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(left: 25, top: 20),
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                height: 300,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 35, left: 50),
                        width: 100,
                        height: 100,
                        child: radialPointer(30),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Text(
                          "Sport App",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white70),
                        ),
                      ),
                      Text(
                        "40 hours progress",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(left: 25, top: 20),
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                height: 300,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 35, left: 50),
                        width: 100,
                        height: 100,
                        child: radialPointer(25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Text(
                          "Sport App",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white70),
                        ),
                      ),
                      Text(
                        "40 hours progress",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    ],
  );
}