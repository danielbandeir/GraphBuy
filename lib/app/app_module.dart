import 'package:nubuy/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/app_widget.dart';
import 'package:nubuy/app/core/routes.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget(initialRoute: indexRoute, routes: routes);

  static Inject get to => Inject<AppModule>.of();
}
