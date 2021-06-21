import 'package:hive/hive.dart';
import 'package:mobile/src/middleware/hive_middleware.dart';
import 'package:redux/redux.dart';
import 'package:mobile/src/models/index.dart';

class AppMiddleware {
  const AppMiddleware({
    required Box<List<int>> box,
  }) : _box = box;

  final Box<List<int>> _box;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      ...HiveMiddleware(box: _box).middleware,
    ];
  }
}
