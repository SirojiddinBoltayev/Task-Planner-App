import 'package:flutter/material.dart';
import 'active_projects.dart';
import 'my_tasks.dart';

Widget sliverList (){
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MyTasks(),
      ActiveProjects(),

    ],
  );
}