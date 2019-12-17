import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:nubuy/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/app_repository.dart';
import 'package:nubuy/app/app_widget.dart';
import 'package:nubuy/app/core/constants.dart';
import 'package:nubuy/app/core/routes.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency(
            (i) => AppRepository(client: i.getDependency<GraphQLClient>())),
        Dependency((i) => ValueNotifier(
              GraphQLClient(
                cache: InMemoryCache(),
                link: Constants().getLink(),
              ),
            )),
        Dependency((i) => GraphQLClient(
              cache: InMemoryCache(),
              link: Constants().getLink(),
            ))
      ];

  @override
  Widget get view => AppWidget(initialRoute: indexRoute, routes: routes);

  static Inject get to => Inject<AppModule>.of();
}
