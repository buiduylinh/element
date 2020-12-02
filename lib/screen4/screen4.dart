import 'package:flutter/material.dart';
import 'package:flutter_learning/screen4/provider/MyProvider.dart';
import 'package:flutter_riverpod/all.dart';
//import 'package:provider/provider.dart';

class Screen4 extends StatelessWidget {
  Widget CustomTabar() {
    print("CustomTabar");
    return AppBar(
      title: Text("Screen 4"),
      actions: [
        Consumer(builder: (_, read, __) {
          return Icon(Icons.add, color: read(colorProvider2).color);
        })
      ],
    );
  }

  Widget CustomFlatButton() {
    print("FlatButton");
    return FlatButton(
      onPressed: null,
      child: Text("Test"),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("build");

    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: CustomTabar(),
        body: Column(
          children: [
            Container(
              child: TextField(
                onChanged: (text) {
                  context.read(colorProvider2).changeColor(text.length);
                },
              ),
            ),
            CustomFlatButton(),
          ],
        ),
      ),
    );
  }
}
