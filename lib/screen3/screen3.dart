import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_learning/screen3/model/MyData.dart';

class Screen3 extends StatelessWidget {
  List<MyData> myData = List();

  List<MyData> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed = json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<MyData>((json) => MyData.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
//    List<MyData> myDataFromJson(String str) => List<MyData>.from(json.decode(str).map((x) => MyData.fromJson(x)));
//    String myDataToJson(List<MyData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 3"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            builder: (context, snapshot) {
              myData = parseJson(snapshot.data.toString());

              return new ListView.builder(
                itemCount: myData == null ? 0 : myData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image.network(myData[index].icon),
                          width: 96,
                          height: 96,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("${myData[index].name} $index"),
                              Text("Description: " + myData[index].desc),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            future:
                DefaultAssetBundle.of(context).loadString('assets/data.json'),
          ),
        ),
      ),
    );
  }
}
