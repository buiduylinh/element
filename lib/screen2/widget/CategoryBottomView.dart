import 'package:flutter/material.dart';
import 'package:flutter_learning/Screen2/Model/CategoryBottomModel.dart';

Widget CategoryBottomView(CategoryBottomModel categoryBottomModel) {
  return Container(
    alignment: Alignment.topLeft,
    foregroundDecoration: BoxDecoration(
        border: Border(left: BorderSide(color: Color(0xFF000000)))),
    margin: EdgeInsets.fromLTRB(16, 2, 16, 2),
    padding: EdgeInsets.fromLTRB(4, 4, 0, 4),
//      color: Color(0xEED4F1CF),
    child: Row(
      children: [
        Expanded(
          child: Text("${categoryBottomModel.title}",
              style: TextStyle(
                color: Color(0xFF1E562A),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              )),
        ),
        Container(
            width: 16,
            height: 16,
            child: Image(
              image: AssetImage('navigation.png'),
            ))
      ],
    ),
    color: Color(0xFFD4F1CF),
  );
}
