import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String description;
  final Function onPress;

  const CategoryItem({
    Key key,
    this.title,
    this.description,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF555555).withOpacity(0.1),
            offset: Offset(0, 5),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        child: InkWell(
          highlightColor: Colors.black12,
          splashColor: Colors.black12,
          onTap: onPress,
          child: Ink(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
