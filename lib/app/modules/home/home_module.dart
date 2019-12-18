import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:nubuy/app/modules/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/home/home_page.dart';
import 'package:nubuy/app/modules/home/impl/home_repository_impl.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeBloc(
            homeRepository: HomeModule.to.getDependency<HomeRepositoryImpl>()))
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) =>
            HomeRepositoryImpl(client: AppModule.to.getDependency<GraphQLClient>()))
      ];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
