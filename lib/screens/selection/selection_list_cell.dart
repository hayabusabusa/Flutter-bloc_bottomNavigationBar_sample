import 'package:flutter/material.dart';

class SelectionListCell extends StatelessWidget {
  final String title;
  final String description;
  final Function onTapHandler;

  SelectionListCell({
    @required this.title,
    @required this.description,
    @required this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Section
        SizedBox(height: 24.0,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
          child: Text(
            description.toUpperCase(),
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.subtitle.merge(TextStyle(color: Colors.grey[400])),
          ),
        ),

        // Divider
        Container(
          height: 1.0,
          color: Colors.grey[300],
        ),

        // Cell
        ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.body2,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () => onTapHandler(),
        ),

        // Divider
        Container(
          height: 1.0,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}