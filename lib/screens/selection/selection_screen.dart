import 'package:flutter/material.dart';
import 'package:bloc_bottom_navigation_sample/screens/screens.dart';
import 'package:bloc_bottom_navigation_sample/screens/selection/selection_widgets.dart';

class SelectionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select'),
      ),
      body: ListView(
        children: <Widget>[
          // Simple
          SelectionListCell(
            title: 'Simple',
            description: 'Simple Tab example.',
            onTapHandler: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return TabScreen();
                  }
                )
              );
            },
          ),

          // Advanced
          SelectionListCell(
            title: 'Advanced',
            description: 'Advanced Tab example.\nNested Navigator',
            onTapHandler: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return AdvancedTabScreen();
                  }
                ),
              );
            },
          ),

          // Cupertino
          SelectionListCell(
            title: 'Cupertino',
            description: 'Cupertino Bottom Tab Bar example.\nBest Solution of Nested Navigator.',
            onTapHandler: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CupertinoTabScreen();
                  }
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}