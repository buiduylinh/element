import 'package:flutter/material.dart';
import 'package:flutter_learning/Screen2/Model/ViewMoreModel.dart';

Widget ViewMoreView(ViewMoreModel viewMoreModel) {
  return Container(
    margin: EdgeInsets.all(8),
    alignment: Alignment.center,
    child: Text("${viewMoreModel.title}",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Color(0xFF1E562A),
          fontSize: 14,
          decoration: TextDecoration.none,
        )),
  );
}