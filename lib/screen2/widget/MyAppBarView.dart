import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar MyAppBarView() {
  return AppBar(
    actions: [
      Container(
          padding: EdgeInsets.all(16),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          )),
      Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: FlatButton(
            onPressed: () {},
            textColor: Color(0xFF1E562A),
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Tìm kiếm truyện",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xFF1E562A)),
                borderRadius: BorderRadius.circular(40)),
          ),
        ),
      ),
      Container(
          padding: EdgeInsets.all(16),
          child: Image(
            image: AssetImage("point.png"),
          ))
    ],
    title: Text(""),
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
  );
}
