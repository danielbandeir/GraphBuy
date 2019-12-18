import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:nubuy/app/modules/offer/offer_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/offer/offer_page.dart';
import 'package:nubuy/app/modules/offer/offer_repository.dart';

class OfferModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => OfferBloc(
          offerRepository: OfferModule.to.getDependency<OfferRepository>()
        )),
      ];

  @override
  List<Dependency> get dependencies => [
    Dependency((i) => OfferRepository(
      client: AppModule.to.getDependency<GraphQLClient>()
    ))
  ];

  @override
  Widget get view => OfferPage();

  static Inject get to => Inject<OfferModule>.of();
}
