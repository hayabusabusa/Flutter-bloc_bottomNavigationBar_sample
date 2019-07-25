import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(colors: Colors.blue,),
          SizedBox(height: 8.0,),
          Text(
            'This is First Screen',
            style: Theme.of(context).textTheme.body1,
          ),
        ],
      ),
    );
  }
}