import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(colors: Colors.green,),
          SizedBox(height: 8.0,),
          Text(
            'This is Third Screen',
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}