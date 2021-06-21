import 'package:flutter/material.dart';
import 'package:mobile/src/actions/app/index.dart';
import 'package:mobile/src/containers/index.dart';
import 'package:mobile/src/presentation/home/home_part.dart';
import 'package:mobile/src/presentation/menu_page.dart';
import 'package:mobile/src/presentation/mixins/store_mixin.dart';
import 'package:mobile/src/presentation/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with StoreMixin<HomePage> {
  final PageController _pageController = PageController();
  late int _locationsLength;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final dynamic _hasAdded = ModalRoute.of(context)!.settings.arguments;
      if (_hasAdded is bool) {
        goToPage(_locationsLength);
      }
    });
  }

  void goToPage(int page) {
    _pageController.jumpToPage(page);
  }

  void removePage(int id, int page) {
    _pageController.jumpToPage(page - 1);
    dispatch(RemoveSavedLocationId$(id: id));
  }

  @override
  Widget build(BuildContext context) {
    return SavedLocationsContainer(
      builder: (BuildContext context, List<int> savedLocations) {
        _locationsLength = savedLocations.length;
        if (_locationsLength == 0) {
          return const MenuPage(showSearch: true);
        }

        return Scaffold(
          body: SafeArea(
            bottom: false,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _locationsLength,
                    itemBuilder: (BuildContext context, int index) {
                      final int savedLocation = savedLocations[index];

                      return HomePart(
                        index: index,
                        savedLocation: savedLocation,
                        goToPage: goToPage,
                        removePage: removePage,
                      );
                    },
                  ),
                ),
                Container(
                  height: 32,
                  color: AppColors.third,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: _locationsLength,
                      effect: ColorTransitionEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: AppColors.second.withOpacity(0.4),
                        activeDotColor: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
