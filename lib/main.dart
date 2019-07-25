import 'package:flutter/material.dart';
import 'package:bloc_bottom_navigation_sample/screens/screens.dart';

void main() {
  runApp(BlocNaviBarApp());
}

class BlocNaviBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc NaviBar App',
      home: SelectionScreen(),
    );
  }
}