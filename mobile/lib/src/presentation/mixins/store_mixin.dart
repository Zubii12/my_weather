import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/models/index.dart';
import 'package:redux/redux.dart';

abstract class StoreReadyProvider {
  Store<AppState> get store;

  FutureOr<void> onStoreInit(Store<AppState> store);
}

mixin StoreMixin<S extends StatefulWidget> on State<S> implements StoreReadyProvider {
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();
    _store = StoreProvider.of(context, listen: false);
    onStoreInit(_store);
  }

  @override
  FutureOr<void> onStoreInit(Store<AppState> store) {}

  @override
  Store<AppState> get store => _store;

  void dispatch(dynamic action) => _store.dispatch(action);
}
