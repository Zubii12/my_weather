import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/actions/app/index.dart';
import 'package:mobile/src/actions/location_weather/index.dart';
import 'package:mobile/src/containers/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/presentation/routes.dart';
import 'package:mobile/src/presentation/search/search_page_part.dart';
import 'package:mobile/src/presentation/theme.dart';
import 'package:redux/src/store.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchResultContainer(
        builder: (BuildContext context, List<Location> searchResults) {
          final Store<AppState> store = StoreProvider.of<AppState>(context);

          return ListView.builder(
            itemCount: searchResults.length,
            itemBuilder: (BuildContext context, int index) {
              final Location location = searchResults[index];

              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      '${location.title}',
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Text(
                      '${location.locationType}',
                      style: TextStyle(
                        color: AppColors.second.withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () async {
                      store.dispatch(GetWeatherData$(locationsId: <int>[location.id]));

                      final bool? isWanted = await showModalBottomSheet<bool>(
                        enableDrag: true,
                        isDismissible: true,
                        isScrollControlled: true,
                        useRootNavigator: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return SearchPagePart(location: location);
                        },
                      );

                      if (isWanted != null && isWanted) {
                        store
                          ..dispatch(AddSavedLocationId$(id: location.id))
                          ..dispatch(const SearchLocationQuery$(query: ''));

                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.homePage,
                          (Route<dynamic> route) => false,
                          arguments: true,
                        );
                      } else {
                        store
                          ..dispatch(RemoveWeatherData$(locationId: location.id))
                          ..dispatch(const SearchLocationQuery$(query: ''));
                        return;
                      }
                    },
                  ),
                  const Divider(
                    color: AppColors.primary,
                    height: 8.0,
                    indent: 8.0,
                    endIndent: 8.0,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
