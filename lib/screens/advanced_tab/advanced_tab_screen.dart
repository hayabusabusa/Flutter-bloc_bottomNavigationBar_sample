import 'package:flutter/material.dart';
import 'package:bloc_bottom_navigation_sample/models/models.dart';
import 'package:bloc_bottom_navigation_sample/screens/advanced_tab/tab_navigator.dart';


class AdvancedTabScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdvancedTabScreenState();
}

class _AdvancedTabScreenState extends State<AdvancedTabScreen> {

  AppTab currentTab = AppTab.first;
  Map<AppTab, GlobalKey<NavigatorState>> navigatorKeys = {
    AppTab.first: GlobalKey<NavigatorState>(),
    AppTab.second: GlobalKey<NavigatorState>(),
    AppTab.third: GlobalKey<NavigatorState>(),
  };

  void _selectTab(AppTab activeTab) {
    setState(() {
      currentTab = activeTab;
    });
  }

  Widget _buildOffstageNavigator(AppTab tab) {
    return Offstage(
      offstage: currentTab != tab,
      child: TabNavigator(
        navigatorKey: navigatorKeys[tab],
        tab: tab,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildOffstageNavigator(AppTab.first),
          _buildOffstageNavigator(AppTab.second),
          _buildOffstageNavigator(AppTab.third),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: AppTab.values.indexOf(currentTab),
        items: <BottomNavigationBarItem>[
          // First
          BottomNavigationBarItem(
            title: Text('First'),
            icon: Icon(Icons.home),
          ),

          // Second
          BottomNavigationBarItem(
            title: Text('Second'),
            icon: Icon(Icons.timeline)
          ),

          // Third
          BottomNavigationBarItem(
            title: Text('Third'),
            icon: Icon(Icons.settings),
          ),
        ],
        onTap: (index) {
          _selectTab(AppTab.values[index]);
        },
      ),
    );
  }
}