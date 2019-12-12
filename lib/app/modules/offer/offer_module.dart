import 'package:nu_buy/app/modules/offer/offer_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nu_buy/app/modules/offer/offer_page.dart';

class OfferModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => OfferBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => OfferPage();

  static Inject get to => Inject<OfferModule>.of();
}
