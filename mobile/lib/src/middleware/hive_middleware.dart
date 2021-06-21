import 'package:hive/hive.dart';
import 'package:mobile/src/actions/app/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:redux/redux.dart';

class HiveMiddleware {
  const HiveMiddleware({
    required Box<List<int>> box,
  }) : _box = box;

  final Box<List<int>> _box;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, AddSavedLocationId$>(_addSavedLocationId),
      TypedMiddleware<AppState, RemoveSavedLocationId$>(_removeSavedLocationId),
    ];
  }

  Future<void> _addSavedLocationId(Store<AppState> store, AddSavedLocationId$ action, NextDispatcher next) async {
    next(action);
    final List<int> list = _box.get('savedLocations')!;
    list.add(action.id);
    await _box.put('savedLocations', list);
  }

  Future<void> _removeSavedLocationId(Store<AppState> store, RemoveSavedLocationId$ action, NextDispatcher next) async {
    next(action);
    final List<int> list = _box.get('savedLocations')!;
    list.remove(action.id);
    await _box.put('savedLocations', list);
  }
}
