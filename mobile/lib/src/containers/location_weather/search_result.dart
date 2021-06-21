part of location_weather_containers;

class SearchResultContainer extends StatelessWidget {
  const SearchResultContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Location>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Location>>(
      converter: (Store<AppState> store) => store.state.locationWeather.searchResult.toList(),
      builder: builder,
    );
  }
}
