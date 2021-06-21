part of location_weather_containers;

class LocationWeatherContainer extends StatelessWidget {
  const LocationWeatherContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<int, LocationWeather>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<int, LocationWeather>>(
      converter: (Store<AppState> store) => store.state.locationWeather.locationWeather.toMap(),
      builder: builder,
    );
  }
}
