import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdvancedFirstDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('First Detail'),
      // ),
      appBar: CupertinoNavigationBar(
        middle: Text('NavigationBar'),
      ),
      body: Center(
        child: Text('Hi, i`m detail :)'),
      ),
    );
  }
}