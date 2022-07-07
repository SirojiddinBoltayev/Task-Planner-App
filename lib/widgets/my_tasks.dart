import 'package:flutter/material.dart';

Widget MyTasks(){
  return  Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                bottom: 25,
                left: 18,
              ),
              child: Text(
                "My tasks",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 25,
                  child: Icon(
                    Icons.access_time,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "ToDo",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  children: const [
                    Text(
                      "5 tasks now",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "        1 started",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                )),
            ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 25,
                  child: Icon(
                    Icons.not_interested,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "ToDo",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  children: const [
                    Text(
                      "1 task now",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "          1 started",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                )),
            ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 25,
                  child: Icon(
                    Icons.keyboard_double_arrow_right_outlined,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "ToDo",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  children: const [
                    Text(
                      "18 tasks now",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "      18 tasks completed",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                )),
          ],
        ),
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 25, top: 35),
            child: CircleAvatar(
              radius: 30,
              child: Icon(Icons.calendar_today_outlined),
            ),
          ),
        ],
      ),
    ],
  );
}