import 'dart:async';

import 'package:mobile/src/epics/app_epics.dart';
import 'package:mobile/src/middleware/app_middleware.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<InitResult> init() async {
  final StreamController<dynamic> actions = StreamController<dynamic>.broadcast();

  const AppEpics appEpics = AppEpics();

  const AppMiddleware appMiddleware = AppMiddleware();

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      ...appMiddleware.middleware,
      EpicMiddleware<AppState>(appEpics.epics),
      (_, dynamic action, NextDispatcher next) {
        next(action);
        actions.add(action);
      },
    ],
  ); //..dispatch(const InitializeApp());

  return InitResult(store, actions.stream);
}

class InitResult {
  InitResult(this.store, this.actions);

  final Store<AppState> store;
  final Stream<dynamic> actions;
}
