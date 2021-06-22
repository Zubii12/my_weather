import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/src/actions/app/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/reducer/reducer.dart';

import '../mock_models.dart';

void main() {
  late AppState appState;

  final dynamic appStateData = 'test/res/app_state.json'.readJson;

  setUp(() {
    appState = AppState.fromJson(appStateData);
  });

  test('isActionStart', () {
    const InitializeApp$ action = InitializeApp$();
    final AppState state = reducer(appState, action);
    expect(state.pendingActions.contains(action.pendingId), isFalse);
  });

  test('isActionDone', () {
    const InitializeAppSuccessful action = InitializeAppSuccessful();
    final AppState state = reducer(appState, action);
    expect(state.pendingActions.contains(action.pendingId), isFalse);
  });

  test('addSavedLocationId', () {
    const AddSavedLocationId$ action = AddSavedLocationId$(id: 1);
    final AppState state = reducer(appState, action);
    expect(state.savedLocations.contains(1), isTrue);
  });

  test('removeSavedLocationId', () {
    const RemoveSavedLocationId$ action = RemoveSavedLocationId$(id: 44418);
    final AppState state = reducer(appState, action);
    expect(state.savedLocations.contains(44418), isFalse);
  });
}
