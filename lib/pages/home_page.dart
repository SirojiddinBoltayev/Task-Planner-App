
import 'package:flutter/material.dart';
import 'package:task_planner_app/widgets/body_custom_scroll_view.dart';


import '../widgets/app_appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Builder(
          builder: (context) => HomeAppBar(context),
        ),
      ),
      body: HomeCustomScroll(context),
    );
  }
}
