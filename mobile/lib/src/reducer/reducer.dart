import 'dart:developer';

import 'package:mobile/src/actions/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, ActionStart>(_isActionStart),
  TypedReducer<AppState, ActionDone>(_isActionDone),
]);

AppState _reducer(AppState state, dynamic action) {
  log('$action');
  return state;
}

AppState _isActionStart(AppState state, ActionStart action) {
  return state.rebuild((AppStateBuilder b) {
    b.pendingActions.add(action.pendingId);
  });
}

AppState _isActionDone(AppState state, ActionDone action) {
  return state.rebuild((AppStateBuilder b) {
    b.pendingActions.remove(action.pendingId);
  });
}
