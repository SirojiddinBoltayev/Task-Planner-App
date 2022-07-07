import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:task_planner_app/model/user_point.dart';

Widget radialPointer(double item) {
  // double item = 65;
  final UserPoint userPoint = UserPoint(point: item);
  return Center(
      child: SfRadialGauge(axes: <RadialAxis>[
    RadialAxis(
        interval: 10,
        startAngle: 2,
        endAngle: 360,
        showTicks: false,
        showLabels: false,

        axisLineStyle: AxisLineStyle(
          thickness: 10,
        ),
        pointers: <GaugePointer>[
          RangePointer(
            value: item,
            width: 10,
            color: Colors.white70,
            enableAnimation: true,
            cornerStyle: CornerStyle.bothCurve,
          ),
        ],
        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Align(
                child: Text("${userPoint.point.ceil()}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white70)),
              ),
              angle: 270,
              positionFactor: 0.1)
        ])
  ]));
}

Widget profilePointer() {
  double _point = 65;
  final UserPoint userPoint = UserPoint(point: _point);
  return Center(
      child: SfRadialGauge(axes: <RadialAxis>[
    RadialAxis(
      interval: 10,
      startAngle: 2,
      endAngle: 360,
      showTicks: false,
      showLabels: false,
      showAxisLine: false,
      axisLineStyle: const AxisLineStyle(
        thickness: 1,
      ),
      pointers: <GaugePointer>[
        RangePointer(
          value: userPoint.point,
          width: 3,
          color: Colors.redAccent,
          enableAnimation: true,
          cornerStyle: CornerStyle.bothCurve,
        ),
      ],
      annotations: <GaugeAnnotation>[
        GaugeAnnotation(
          widget:
              // Padding(
              //   // padding: const EdgeInsets.only(),
              //   child:
              Align(
            child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.FK05bsc_EKBWE1yDnbl8swHaDt%26pid%3DApi%26h%3D160&f=1")),
          ),
          // ),
          horizontalAlignment: GaugeAlignment.center,
          // verticalAlignment:GaugeAlignment.far,
          angle: 270,

          // positionFactor: 0.0,
        )
      ],
    )
  ]));
}
