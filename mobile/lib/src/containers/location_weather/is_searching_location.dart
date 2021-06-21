part of location_weather_containers;

class IsSearchingLocationContainer extends StatelessWidget {
  const IsSearchingLocationContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) => store.state.pendingActions.contains(SearchLocationQuery.pendingKey),
      builder: builder,
    );
  }
}
