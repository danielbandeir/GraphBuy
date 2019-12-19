import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:internationalization/internationalization.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:nubuy/app/modules/home/home_module.dart';

class AppWidget extends StatefulWidget {
  final Map<String, WidgetBuilder> routes;
  final String initialRoute;
  const AppWidget({@required this.routes, @required this.initialRoute});
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
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
          initialRoute: widget.initialRoute,
          supportedLocales: suportedLocales,
          localizationsDelegates: [
              Internationalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
          ],
          routes: widget.routes,
          home: HomeModule(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    Hive.box('user').close();
    super.dispose();
  }
}
