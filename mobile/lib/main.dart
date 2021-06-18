import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/init/init.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/presentation/home.dart';
import 'package:mobile/src/presentation/routes.dart';
import 'package:mobile/src/presentation/theme.dart';
import 'package:mobile/src/presentation/widgets/actions_interceptor.dart';
import 'package:redux/redux.dart';

void main() {
  runZonedGuarded(() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      final InitResult initResult = await init();
      runApp(MyWeatherApp(result: initResult));
    } catch (error, stackTrace) {
      log('1Zone Error', error: error, stackTrace: stackTrace, zone: Zone.current);
      print('1Zone z_error: $error');
      print('1z_stackTrace: $stackTrace');
      print('1z_zone ${Zone.current}');
    }
  }, (Object error, StackTrace stackTrace) {
    log('2Zone Error', error: error, stackTrace: stackTrace, zone: Zone.current);
    print('2Zone z_error: $error');
    print('2z_stackTrace: $stackTrace');
    print('2z_zone ${Zone.current}');
  });
}

class MyWeatherApp extends StatefulWidget {
  const MyWeatherApp({Key? key, required this.result}) : super(key: key);

  final InitResult result;

  @override
  _MyWeatherAppState createState() => _MyWeatherAppState();
}

class _MyWeatherAppState extends State<MyWeatherApp> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        final Store<AppState> store = widget.result.store;
        final Stream<dynamic> actions = widget.result.actions;

        return ActionsInterceptor(
          actions: actions,
          child: StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              theme: appTheme,
              debugShowCheckedModeBanner: false,
              onGenerateTitle: (BuildContext context) {
                return 'MyWeather';
              },
              routes: <String, WidgetBuilder>{
                ...AppRoutes.routes,
                AppRoutes.home: (_) => const Home(),
              },
            ),
          ),
        );
      },
    );
  }
}
