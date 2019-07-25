import 'package:flutter/material.dart';
import 'package:bloc_bottom_navigation_sample/screens/screens.dart';

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
          SizedBox(height: 8.0,),
          RaisedButton(
            child: Text('Push Detail'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(Colors.blue);
                  }
                )
              );
            },
          ),
        ],
      ),
    );
  }
}