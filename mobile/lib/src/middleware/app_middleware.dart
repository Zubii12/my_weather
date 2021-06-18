import 'package:redux/redux.dart';
import 'package:mobile/src/models/index.dart';

class AppMiddleware {
  const AppMiddleware();

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[];
  }
}
