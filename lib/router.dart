import 'package:dear_diary/screens/auth_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    const String toAuthRoute = "/toAuthRoute";

    switch (settings.name) {
      case toAuthRoute:
        return MaterialPageRoute(builder: (_) => AuthPage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(),
                  body: Text("ters giden bir şey oldu"),
                ));
    }
  }
}
