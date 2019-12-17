import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:nubuy/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  final Map<String, WidgetBuilder> routes;
  final String initialRoute;

  const AppWidget({@required this.routes, @required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    final clientGraphQl = AppModule.to.getDependency<ValueNotifier>();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return GraphQLProvider(
      client: clientGraphQl,
      child: CacheProvider(
        child: MaterialApp(
          title: 'NuBuy',
          initialRoute: this.initialRoute,
          routes: this.routes,
          home: HomeModule(),
        ),
      ),
    );
  }
}
