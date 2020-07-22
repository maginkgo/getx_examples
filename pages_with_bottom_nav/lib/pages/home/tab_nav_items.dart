import 'package:flutter/material.dart';

import '../four/four_page.dart';
import '../one/one_page.dart';
import '../three/three_page.dart';
import '../two/two_page.dart';

class TabNavItems {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavItems({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavItems> get items => [
        TabNavItems(
          page: OnePage(),
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        TabNavItems(
          page: TwoPage(),
          icon: Icon(Icons.shopping_basket),
          title: Text("Shop"),
        ),
        TabNavItems(
          page: ThreePage(),
          icon: Icon(Icons.search),
          title: Text("Search"),
        ),
        TabNavItems(
          page: FourPage(),
          icon: Icon(Icons.list),
          title: Text("List"),
        ),
      ];
}
