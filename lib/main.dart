import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'router/aplication.dart';
import 'router/routes.dart';
import 'view/splash/splash_page.dart';

void main() {
  final router = Router();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashPage(),
        onGenerateRoute: Application.router.generator);
  }
}
