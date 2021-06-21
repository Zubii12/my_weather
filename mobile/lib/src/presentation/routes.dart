import 'package:flutter/material.dart';
import 'package:mobile/src/presentation/home/home_page.dart';
import 'package:mobile/src/presentation/menu_page.dart';
import 'package:mobile/src/presentation/search/search_page.dart';

// ignore: avoid_classes_with_only_static_members
abstract class AppRoutes {
  static const String home = '/';
  static const String homePage = '/homePage';
  static const String menuPage = '/menuPage';
  static const String searchPage = '/searchPage';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    homePage: (_) => const HomePage(),
    menuPage: (BuildContext context) {
      final bool? showSearch = ModalRoute.of(context)?.settings.arguments as bool?;
      return MenuPage(showSearch: showSearch ?? false);
    },
    searchPage: (_) => const SearchPage(),
  };
}
