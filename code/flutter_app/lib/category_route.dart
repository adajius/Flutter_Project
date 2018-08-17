
import 'package:flutter/material.dart';
import 'category.dart';

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();
  static const _categoryNames = 'Music description goes here. ';

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(

      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,

    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < 8; i++) {
      categories.add(Category(
        name: _categoryNames,
        //color: _baseColors[i],
        iconLocation: Icons.play_circle_filled,
        iconLocationn: Icons.thumb_up, 

      ));
    }

    final listViews = Container(
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Play My Music',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
    );

    return Scaffold(
      appBar: appBar,
      body: listViews,
    );
  }
}