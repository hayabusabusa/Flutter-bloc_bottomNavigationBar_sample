import 'package:flutter/cupertino.dart';
import 'package:bloc_bottom_navigation_sample/models/models.dart';
import 'package:bloc_bottom_navigation_sample/screens/screens.dart';

class CupertinoTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      // TabBar
      tabBar: CupertinoTabBar(
        items: AppTab.values.map((tab) {
        String title;
        Icon icon;

        switch (tab) {
          case AppTab.first:
            title = 'First';
            icon = Icon(CupertinoIcons.home);
            break;
          case AppTab.second:
            title = 'Second';
            icon = Icon(CupertinoIcons.time);
            break;
          case AppTab.third:
            title = 'Third';
            icon = Icon(CupertinoIcons.settings);
            break;
          default:
            break;
        }

        return BottomNavigationBarItem(
          title: Text(title),
          icon: icon
        );
      }).toList(),
      ),

      // TabBuilder
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return FirstScreen();
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              // TODO: FloatingActionButtonがTabBarの下になってしまうので調査。
              return SecondScreen();
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return ThirdScreen();
            });
          default:
            return CupertinoTabView();
        }
      },
    );
  }
}