import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mobile/src/containers/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/presentation/routes.dart';
import 'package:mobile/src/presentation/theme.dart';
import 'package:mobile/src/presentation/weather_table.dart';

class HomePart extends StatelessWidget {
  const HomePart({
    Key? key,
    required this.index,
    required this.goToPage,
    required this.removePage,
    required this.savedLocation,
  }) : super(key: key);

  final int index;
  final int savedLocation;
  final Function(int) goToPage;
  final Function(int, int) removePage;

  @override
  Widget build(BuildContext context) {
    return IsInitializingAppContainer(
      builder: (BuildContext context, bool isLoading) {
        return WeatherParametersContainer(
          builder: (BuildContext context, List<String> weatherParameters) {
            return LocationWeatherContainer(
              builder: (BuildContext context, Map<int, LocationWeather> vm) {
                if (isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final Size size = MediaQuery.of(context).size;
                final LocationWeather locationWeather = vm[savedLocation]!;
                final Location location = locationWeather.location;
                final Weather todayWeather = locationWeather.weather.first;
                final List<dynamic> weatherParams = <dynamic>[
                  DateFormat('hh:mm a').format(locationWeather.sunRise),
                  DateFormat('hh:mm a').format(locationWeather.sunSet),
                  '${todayWeather.predictability} %',
                  '${todayWeather.windDirectionCompass} ${todayWeather.windSpeed.round()} mph',
                  todayWeather.humidity,
                  '${todayWeather.airPressure} mbar',
                  '${todayWeather.visibility.toStringAsFixed(2)} miles',
                ];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      minVerticalPadding: 0,
                      title: Text(
                        '${location.title}',
                        style: const TextStyle(
                          fontSize: 32.0,
                          color: AppColors.primary,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          '${DateFormat('d, MMMM').format(todayWeather.applicableDate)}',
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              removePage(locationWeather.id, index);
                            },
                            icon: const Icon(
                              Icons.remove,
                              size: 32.0,
                              color: AppColors.primary,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              final dynamic result = await Navigator.pushNamed(context, AppRoutes.menuPage);
                              if (result is int) {
                                goToPage(result);
                              }
                            },
                            icon: const Icon(
                              Icons.menu,
                              size: 32.0,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      enabled: false,
                    ),
                    LimitedBox(
                      maxHeight: size.height * 0.25,
                      maxWidth: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: SvgPicture.asset(
                              'res/svg/${todayWeather.weatherStateAbbreviation}.svg',
                              height: 88.0,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 16.0,
                                bottom: 8.0,
                              ),
                              child: Text(
                                '${todayWeather.theTemp.round()} ${'\u2103'}',
                                style: const TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 32.0,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Text(
                              '${todayWeather.weatherStateName}',
                              style: const TextStyle(
                                color: AppColors.primary,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.18),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: WeatherTable(
                        locationWeather: locationWeather,
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: weatherParameters.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 40,
                          crossAxisSpacing: 32,
                          childAspectRatio: 5,
                          mainAxisExtent: 24,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(
                              weatherParameters[index],
                              style: const TextStyle(
                                color: AppColors.second,
                              ),
                            ),
                            subtitle: Text(
                              '${weatherParams[index]}',
                              style: const TextStyle(
                                color: AppColors.primary,
                              ),
                            ),
                          );
                        },
                      ),
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
