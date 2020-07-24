import 'package:flutter/material.dart';
import 'package:pages_with_bottom_nav/app.dart';

enum HomeScreenTab { one, two, three, four }

extension TabExtension on HomeScreenTab {
  IconData get icon {
    IconData icon;
    switch (this) {
      case HomeScreenTab.one:
        icon = Icons.home;
        break;
      case HomeScreenTab.two:
        icon = Icons.shop;
        break;
      case HomeScreenTab.three:
        icon = Icons.search;
        break;
      case HomeScreenTab.four:
        icon = Icons.list;
    }
    return icon;
  }

  String get title {
    String title;
    switch (this) {
      case HomeScreenTab.one:
        title = 'One';
        break;
      case HomeScreenTab.two:
        title = 'Two';
        break;
      case HomeScreenTab.three:
        title = 'Three';
        break;
      case HomeScreenTab.four:
        title = 'Four';
    }
    return title;
  }

  String get page {
    String page;
    switch (this) {
      case HomeScreenTab.one:
        page = Routes.ONE;
        break;
      case HomeScreenTab.two:
        page = Routes.TWO;
        break;
      case HomeScreenTab.three:
        page = Routes.THREE;
        break;
      case HomeScreenTab.four:
        page = Routes.FOUR;
    }
    return page;
  }
}
