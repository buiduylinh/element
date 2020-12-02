import 'package:flutter/material.dart';
import 'package:flutter_learning/screen6/routes.dart';
import 'package:flutter_learning/screen6/screens/category/category.dart';
import 'package:flutter_learning/screen6/screens/story/story.dart';


class Screen6 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.story:
            final params = settings.arguments as StoryScreenParams;

            return MaterialPageRoute(
              builder: (_) => StoryScreen(
                title: params.title,
                stories: params.stories,
              ),
            );

          case AppRoutes.category:
          default:
            return MaterialPageRoute(
              builder: (_) => StoryCategoryScreen(),
            );
        }
      },
    );
  }
}
