import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_learning/screen6/configs/configs.dart';
import 'package:flutter_learning/screen6/models/category.dart';
import 'package:flutter_learning/screen6/screens/category/widgets/category_item.dart';
import 'package:flutter_learning/screen6/screens/story/story.dart';

import '../../routes.dart';

class StoryCategoryScreen extends StatefulWidget {
  @override
  _StoryCategoryScreenState createState() => _StoryCategoryScreenState();
}

class _StoryCategoryScreenState extends State<StoryCategoryScreen> {
  final dio = Dio();

  bool _loading = true;
  List<StoryCategory> _categories = [];

  @override
  void initState() {
    _getCategories();

    super.initState();
  }

  void _getCategories() async {
    setState(() {
      _loading = true;
    });

    try {
      final response = await dio.get(AppConfigs.categoryUrl);

      final rawCategories = response.data['data'] as List;

      final categories = rawCategories
          .map(
            (e) => StoryCategory.fromJson(e),
          )
          .toList();

      setState(() {
        _categories = categories;
      });
    } catch (e) {
      print(e);

      _showError();
    }

    setState(() {
      _loading = false;
    });
  }

  void _showError() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(
          'Error',
          textAlign: TextAlign.center,
        ),
        content: Text(
          'Error',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _onItemPress(StoryCategory category) {
    Navigator.of(context).pushNamed(
      AppRoutes.story,
      arguments: StoryScreenParams(
        title: category.title,
        stories: category.stories,
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 1.7,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        maxCrossAxisExtent: 240,
      ),
      itemCount: _categories.length,
      itemBuilder: (_, i) {
        final item = _categories[i];

        return CategoryItem(
          title: item.title,
          description: item.description,
          onPress: () => _onItemPress(item),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text('Category'),
      ),
      body: _buildBody(),
    );
  }
}
