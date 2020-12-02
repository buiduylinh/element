import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/Utility.dart';
import 'package:flutter_learning/screen2/screen2.dart';
import 'package:flutter_learning/screen6/screen6.dart';
import 'package:flutter_learning/screen7/screen7.dart';
import 'package:flutter_riverpod/all.dart';

void main() {
  runApp(ProviderScope(child: SignIn()));
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          children: [
            ImageBackground(),
            TextTitleApp(),
            ButtonLoginFacebook(),
            ButtonLoginGoogle(),
            ButtonBTVN(),
            TextPrivacyPolicy(),
          ],
        ),
      ),
    );
  }
}

class ImageBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 90),
          child: Image(image: AssetImage('anhnen.png')),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(50, 70, 50, 0),
          child: Image(image: AssetImage('anhbagia.png')),
        ),
      ],
    );
  }
}

class TextTitleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 10),
      padding: EdgeInsets.fromLTRB(64, 10, 64, 20),
      child: Image(image: AssetImage('titleapp.png')),
    );
  }
}

class ButtonLoginFacebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      margin: EdgeInsets.all(15),
      child: SizedBox(
        width: double.infinity,
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Screen6()));
          },
          color: Utility.fromHex("1E562A"),
          textColor: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Facebook",
            style: TextStyle(fontSize: 19),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}

class ButtonBTVN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      margin: EdgeInsets.all(15),
      child: SizedBox(
        width: double.infinity,
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Screen7()));
          },
          color: Colors.blue,
          textColor: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Bài tập về nhà",
            style: TextStyle(fontSize: 19),
          ),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}

class ButtonLoginGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: SizedBox(
        width: double.infinity,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
          textColor: Utility.fromHex("1E562A"),
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Google",
            style: TextStyle(fontSize: 19),
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Utility.fromHex("1E562A")),
              borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}

class TextPrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 10),
        child: Text.rich(TextSpan(children: <TextSpan>[
          TextSpan(
              text: "Điều khoản",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 10,
                decoration: TextDecoration.none,
              )),
          TextSpan(
              text: " người dùng và ",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10,
                decoration: TextDecoration.none,
              )),
          TextSpan(
              text: "Bảo mật",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 10,
                decoration: TextDecoration.none,
              )),
          TextSpan(
              text: " thông tin",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10,
                decoration: TextDecoration.none,
              )),
        ])),
      ),
    );
  }
}
