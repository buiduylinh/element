import 'package:flutter/material.dart';
import 'package:flutter_learning/Screen2/Model/HeadlineModel.dart';

Widget HeadlineView(HeadlineModel headlineModel) {
  return Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.fromLTRB(16, 16, 0, 4),
    child: Text("${headlineModel.title}",
        style: TextStyle(
          color: Color(0xFF0F0F0F),
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        )),
  );
}
