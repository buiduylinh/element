import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String name;
  final String image;
  final int totalViews;
  final bool isVip;

  const StoryItem({
    Key key,
    this.name = 'Unnamed',
    this.image = '',
    this.totalViews = 0,
    this.isVip = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(image ?? ''),
          fit: BoxFit.fill,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF555555).withOpacity(0.1),
            offset: Offset(0, 5),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.black38,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                name ?? 'Unnamed',
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total view: $totalViews',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                  if (isVip)
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.yellow,
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
