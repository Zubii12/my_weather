part of app_actions;

@freezed
abstract class AddSavedLocationId with _$AddSavedLocationId implements AppAction {
  const factory AddSavedLocationId({required int id}) = AddSavedLocationId$;
}

@freezed
abstract class RemoveSavedLocationId with _$RemoveSavedLocationId implements AppAction {
  const factory RemoveSavedLocationId({required int id}) = RemoveSavedLocationId$;
}
