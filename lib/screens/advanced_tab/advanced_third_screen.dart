import 'package:flutter/material.dart';

class AdvancedThirdScreen extends StatelessWidget {
  final Function onPush;

  AdvancedThirdScreen(
    this.onPush
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'PUSH',
            style: Theme.of(context).textTheme.body1,
          ),
          onPressed: () => onPush(),
        ),
      ),
    );
  }
}