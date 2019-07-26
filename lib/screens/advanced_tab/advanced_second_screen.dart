import 'package:flutter/material.dart';

class AdvancedSecondScreen extends StatelessWidget {
  final Function onPush;

  AdvancedSecondScreen(
    this.onPush
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Center(
        child: Text('Second screen.'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => onPush(),
      ),
    );
  }
}