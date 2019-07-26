import 'package:flutter/material.dart';
import 'package:bloc_bottom_navigation_sample/models/models.dart';
import 'package:bloc_bottom_navigation_sample/screens/advanced_tab/advanced_screens.dart';
import 'package:bloc_bottom_navigation_sample/screens/screens.dart';

// タブの階層とその次の階層のキー名
class TabNavigatorRoutes {
  static const String root = '';
  static const String detail = '/detail';
}

// このNavigatorが遷移を全て管理する
class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final AppTab tab;

  TabNavigator({
    this.navigatorKey,
    this.tab
  });

  @override
  Widget build(BuildContext context) {
    var routeBuilders = _routeBuilders(context);

    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          // routeSettingsに遷移先のキーが入っているのでMapから遷移先のWidgetを取り出し
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }

  // キーとWidgetをMapにして返す
  // キーが階層になっていて、値にWidgetが入っている。
  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) {
        switch (tab) {
          case AppTab.first:
            return AdvancedFirstScreen( () => _push(context));
          case AppTab.second:
            return AdvancedSecondScreen(() => _push(context));
          case AppTab.third:
            return AdvancedThirdScreen(() => _push(context));
          default:
            return Text('unknown AppTab type.');
        }
      },
      TabNavigatorRoutes.detail: (context) => AdvancedDetailScreen(),
    };
  }

  // Navigatorにpushする
  void _push(BuildContext context) {
    var routeBuilders = _routeBuilders(context);
    
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutes.detail](context)
      ),
    );
  }
}