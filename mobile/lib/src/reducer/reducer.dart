import 'dart:developer';

import 'package:mobile/src/actions/app/index.dart';
import 'package:mobile/src/actions/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/reducer/location_weather_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, ActionStart>(_isActionStart),
  TypedReducer<AppState, ActionDone>(_isActionDone),
  TypedReducer<AppState, AddSavedLocationId$>(_addSavedLocationId),
  TypedReducer<AppState, RemoveSavedLocationId$>(_removeSavedLocationId),
]);

AppState _reducer(AppState state, dynamic action) {
  log('$action');
  return state.rebuild((AppStateBuilder b) {
    b.locationWeather = locationWeatherReducer(state.locationWeather, action).toBuilder();
  });
}

AppState _isActionStart(AppState state, ActionStart action) {
  return state.rebuild((AppStateBuilder b) => b.pendingActions.add(action.pendingId));
}

AppState _isActionDone(AppState state, ActionDone action) {
  return state.rebuild((AppStateBuilder b) => b.pendingActions.remove(action.pendingId));
}

AppState _addSavedLocationId(AppState state, AddSavedLocationId$ action) {
  return state.rebuild((AppStateBuilder b) => b.savedLocations.add(action.id));
}

AppState _removeSavedLocationId(AppState state, RemoveSavedLocationId$ action) {
  return state.rebuild((AppStateBuilder b) => b.savedLocations.remove(action.id));
}
