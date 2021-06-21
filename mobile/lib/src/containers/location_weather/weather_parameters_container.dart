part of location_weather_containers;

class WeatherParametersContainer extends StatelessWidget {
  const WeatherParametersContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>>(
      converter: (Store<AppState> store) => store.state.locationWeather.weatherParameters.toList(),
      builder: builder,
    );
  }
}
