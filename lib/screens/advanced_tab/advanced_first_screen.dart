import 'package:flutter/material.dart';

class AdvancedFirstScreen extends StatelessWidget {
  final Function onPush;

  AdvancedFirstScreen(
    this.onPush
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () { },
          ),
        ],
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