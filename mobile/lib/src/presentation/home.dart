import 'package:flutter/material.dart';
import 'package:mobile/src/containers/app/index.dart';
import 'package:mobile/src/presentation/home/home_page.dart';
import 'package:mobile/src/presentation/menu_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SavedLocationsContainer(
      builder: (BuildContext context, List<int> savedLocations) {
        if (savedLocations.isEmpty) {
          return const MenuPage(showSearch: true);
        }
        return const HomePage();
      },
    );
  }
}
