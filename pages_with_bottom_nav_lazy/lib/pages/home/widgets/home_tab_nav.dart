import 'package:flutter/material.dart';

import '../../four/four_page.dart';
import '../../one/one_page.dart';
import '../../three/three_page.dart';
import '../../two/two_page.dart';

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

  Widget get page {
    Widget page;
    switch (this) {
      case HomeScreenTab.one:
        page = OnePage();
        break;
      case HomeScreenTab.two:
        page = TwoPage();
        break;
      case HomeScreenTab.three:
        page = ThreePage();
        break;
      case HomeScreenTab.four:
        page = FourPage();
    }
    return page;
  }
}
