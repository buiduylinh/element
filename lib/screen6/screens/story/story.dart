import 'package:flutter/material.dart';
import 'package:flutter_learning/screen6/configs/configs.dart';
import 'package:flutter_learning/screen6/models/story.dart';
import 'package:flutter_learning/screen6/screens/story/widgets/story_item.dart';

class StoryScreenParams {
  final String title;
  final List<Story> stories;

  const StoryScreenParams({this.title, this.stories});
}

class StoryScreen extends StatefulWidget {
  final String title;
  final List<Story> stories;

  const StoryScreen({this.title, this.stories});

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  String get title => widget.title ?? '';
  List<Story> get stories => widget.stories ?? [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 0.7,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          maxCrossAxisExtent: 200,
        ),
        itemCount: stories.length,
        itemBuilder: (_, i) {
          final item = stories[i];

          return StoryItem(
            name: item.title,
            totalViews: item.totalViews,
            image: item.image == null ? null : AppConfigs.baseUrl + item.image,
            isVip: item.isVip,
          );
        },
      ),
    );
  }
}
