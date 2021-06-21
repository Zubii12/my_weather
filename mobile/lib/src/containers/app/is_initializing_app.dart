part of app_containers;

class IsInitializingAppContainer extends StatelessWidget {
  const IsInitializingAppContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) => store.state.pendingActions.contains(InitializeApp.pendingKey),
      builder: builder,
    );
  }
}
