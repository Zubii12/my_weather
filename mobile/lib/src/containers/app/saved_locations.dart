part of app_containers;

class SavedLocationsContainer extends StatelessWidget {
  const SavedLocationsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<int>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<int>>(
      converter: (Store<AppState> store) => store.state.savedLocations.toList(),
      builder: builder,
    );
  }
}
