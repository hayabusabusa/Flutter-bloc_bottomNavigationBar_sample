import 'package:flutter/material.dart';

class DetailContainer extends StatefulWidget {
  final Color color;

  DetailContainer(this.color);

  @override
  State<StatefulWidget> createState() => _DetailContainerState();
}

class _DetailContainerState extends State<DetailContainer> {
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // AnimatedOpacity
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _opacity,
            child: Container(
              width: 128,
              height: 128,
              color: widget.color,
            ),
          ),

          // Button
          RaisedButton(
            child: Text('Show'),
            onPressed: () {
              setState(() {
                _opacity = 1.0;
              });
            },
          ),
        ],
      )
    );
  }
}