import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/Screen2/Model/CategoryBottomModel.dart';
import 'package:flutter_learning/Screen2/Model/ItemStoryModel.dart';
import 'package:flutter_learning/Screen2/Model/HeadlineModel.dart';
import 'package:flutter_learning/Screen2/Model/ViewMoreModel.dart';
import 'package:flutter_learning/Screen2/Widget/CategoryBottomView.dart';
import 'package:flutter_learning/Screen2/Widget/HeadlineView.dart';
import 'package:flutter_learning/Screen2/Widget/ItemStoryView.dart';
import 'package:flutter_learning/Screen2/Widget/ViewMoreView.dart';
import 'package:flutter_learning/screen2/widget/MyAppBarView.dart';
import 'package:flutter_learning/screen2/widget/PageBannerView.dart';
import 'package:flutter_learning/screen3/screen3.dart';
import 'package:flutter_learning/screen4/screen4.dart';
import 'fake_data/DataFake.dart';

class Screen2 extends StatelessWidget {
  List list = List();

  @override
  Widget build(BuildContext context) {
    list = addDataFake();

    Widget itemBuilder(int index) {
      if (index == 0) {
        return PageBannerView();
      } else if (list[index] is HeadlineModel) {
        return HeadlineView(list[index]);
      } else if (list[index] is ItemStoryModel) {
        return ItemStoryView(list[index]);
      } else if (list[index] is ViewMoreModel) {
        return ViewMoreView(list[index]);
      } else if (list[index] is CategoryBottomModel) {
        return CategoryBottomView(list[index]);
      } else {
        return ItemStoryView(list[index]);
      }
    }

    Route _createRoute(Widget view) {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => view,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var tween = Tween(begin: begin, end: end);
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        appBar: MyAppBarView(),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return FlatButton(
              child: itemBuilder(index),
              onPressed: () {
                if (list[index] is ItemStoryModel) {
                  Navigator.push(context, _createRoute(Screen3()));
                } else if (index == 0) {
                  Navigator.push(context, _createRoute(Screen4()));
                }
              },
            );
          },
        ),
      ),
    );
  }
}
