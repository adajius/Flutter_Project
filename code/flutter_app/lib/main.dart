
import 'package:flutter/material.dart';
import 'category_route.dart';

void main() {
  runApp(PlayMusic());
}

class PlayMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play My Music',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CategoryRoute(),
    );
  }
}