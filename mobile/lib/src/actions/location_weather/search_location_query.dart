part of location_weather_actions;

const String _kSearchLocationQueryPendingId = 'SearchLocationQuery';

@freezed
abstract class SearchLocationQuery with _$SearchLocationQuery implements AppAction {
  @Implements(ActionStart)
  const factory SearchLocationQuery({
    required String query,
    @Default(_kSearchLocationQueryPendingId) String pendingId,
  }) = SearchLocationQuery$;

  @Implements(ActionDone)
  const factory SearchLocationQuery.successful(
    List<Location> locations, [
    @Default(_kSearchLocationQueryPendingId) String pendingId,
  ]) = SearchLocationQuerySuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory SearchLocationQuery.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSearchLocationQueryPendingId) String pendingId,
  ]) = SearchLocationQueryError;

  static String get pendingKey => _kSearchLocationQueryPendingId;
}
