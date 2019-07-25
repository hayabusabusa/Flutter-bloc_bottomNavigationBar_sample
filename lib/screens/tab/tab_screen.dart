import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_bottom_navigation_sample/models/models.dart';
import 'package:bloc_bottom_navigation_sample/blocs/blocs.dart';
import 'package:bloc_bottom_navigation_sample/screens/screens.dart';
import 'package:bloc_bottom_navigation_sample/screens/tab/tab_widgets.dart';

class TabScreen extends StatelessWidget {
  // TODO: とりあえずWidgetで持ってみる、外部注入の方がいい？
  final tabBloc = TabBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: tabBloc,
      builder: (BuildContext context, AppTab activeTab) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Tab'),
          ),
          body: _mapAppTabToWidget(activeTab),
          bottomNavigationBar: TabSelector(
            activeTab: activeTab,
            onTabSelected: (tab) => tabBloc.dispatch(UpdateTab(tab)),
          ),
        );
      },
    );
  }

  Widget _mapAppTabToWidget(AppTab tab) {
    switch (tab) {
      case AppTab.first:
        return FirstScreen();
      case AppTab.second:
        return SecondScreen();
      case AppTab.third:
        return ThirdScreen();
      default:
        return Center(child: Text('Error unknown AppTab type.'),);
    }
  }
}