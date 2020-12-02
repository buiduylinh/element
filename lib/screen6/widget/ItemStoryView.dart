import 'package:flutter/material.dart';
import 'package:flutter_learning/Screen2/Model/ItemStoryModel.dart';

Widget ItemStoryView(ItemStoryModel story) {
  print("Title: ${story.title}");
  return Container(
    child: Row(
      children: [
        Container(
          child: Text("${story.stt}",
              style: TextStyle(
                color: Color(0xFFBF8877),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              )),
        ),
        Container(
          child: Image(image: AssetImage('imgitemlist.png')),
          width: 56,
          height: 56,
          margin: EdgeInsets.all(8),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${story.title}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                  child: Text("Thể loại: ${story.category}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        decoration: TextDecoration.none,
                      )),
                ),
                Text("Lượt nghe: ${story.viewCount}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      decoration: TextDecoration.none,
                    )),
              ],
            ),
          ),
        ),
        Container(
          child: Image(
            image: AssetImage('${story.imageStar}'),
          ),
          width: 20,
          height: 17,
          margin: EdgeInsets.fromLTRB(8, 0, 0, 38),
        ),
      ],
    ),
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFdddddd)))),
    margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
  );
}
