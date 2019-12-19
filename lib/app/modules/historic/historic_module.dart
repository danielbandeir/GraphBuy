import 'package:nubuy/app/modules/historic/historic_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/historic/historic_page.dart';

class HistoricModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HistoricBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
  ];

  @override
  Widget get view => HistoricPage();

  static Inject get to => Inject<HistoricModule>.of();
}
