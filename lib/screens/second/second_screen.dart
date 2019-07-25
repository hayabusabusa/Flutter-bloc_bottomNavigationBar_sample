import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(colors: Colors.red,),
            SizedBox(height: 8.0,),
            Text(
              'This is Second Screen',
              style: Theme.of(context).textTheme.body2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Floating Action Button was tapped.'),
            )
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}