import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  final Map<String, WidgetBuilder> routes;
  final String initialRoute;

  const AppWidget({@required this.routes, @required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'NuBuy',
      initialRoute: this.initialRoute,
      routes: this.routes,
      home: HomeModule(),
    );
  }
}
