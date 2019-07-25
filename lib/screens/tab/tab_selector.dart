import 'package:flutter/material.dart';
import 'package:bloc_bottom_navigation_sample/models/models.dart';

class TabSelector extends StatelessWidget {
  final AppTab activeTab;
  final Function(AppTab) onTabSelected; // 引数にAppTabなので (AppTab) {} になる

  TabSelector({
    @required this.activeTab,
    @required this.onTabSelected,
  }) ;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: AppTab.values.indexOf(activeTab),
      onTap: (index) => onTabSelected(AppTab.values[index]),
      items: AppTab.values.map((tab) {
        String title;
        Icon icon;

        switch (tab) {
          case AppTab.first:
            title = 'First';
            icon = Icon(Icons.home);
            break;
          case AppTab.second:
            title = 'Second';
            icon = Icon(Icons.timeline);
            break;
          case AppTab.third:
            title = 'Third';
            icon = Icon(Icons.settings);
            break;
          default:
            break;
        }

        return BottomNavigationBarItem(
          title: Text(title),
          icon: icon
        );
      }).toList(),
    );
  }
}