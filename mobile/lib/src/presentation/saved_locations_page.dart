import 'package:flutter/material.dart';
import 'package:mobile/src/containers/app/index.dart';
import 'package:mobile/src/containers/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/presentation/theme.dart';

class SavedLocationsPage extends StatelessWidget {
  const SavedLocationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SavedLocationsContainer(
      builder: (BuildContext context, List<int> savedLocations) {
        return LocationWeatherContainer(
          builder: (BuildContext context, Map<int, LocationWeather> vm) {
            return ListView.builder(
              itemCount: savedLocations.length,
              itemBuilder: (BuildContext context, int index) {
                final int locationId = savedLocations[index];
                final LocationWeather locationWeather = vm[locationId]!;
                final Location location = locationWeather.location;
                final Weather todayWeather = locationWeather.weather.first;

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
                        '${todayWeather.theTemp.round()} ${'\u2103'}',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, index);
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
        );
      },
    );
  }
}
