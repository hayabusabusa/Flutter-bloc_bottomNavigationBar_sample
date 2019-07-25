import 'package:flutter/material.dart';
import 'package:bloc_bottom_navigation_sample/screens/detail/detai_widgets.dart';

class DetailScreen extends StatelessWidget {
  final Color color;

  DetailScreen(
    this.color
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: DetailContainer(color),
    );
  }
}