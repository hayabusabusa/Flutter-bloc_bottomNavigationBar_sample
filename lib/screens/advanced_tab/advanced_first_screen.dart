import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdvancedFirstScreen extends StatelessWidget {
  final Function onPush;

  AdvancedFirstScreen(
    this.onPush
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('First'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Push'),
          onPressed: () => onPush(),
        ),
      ),
    );
  }
}