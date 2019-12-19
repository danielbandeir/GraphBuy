import 'package:nubuy/app/modules/help/help_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/help/help_page.dart';
import 'package:nubuy/app/modules/help/impl/help_repository_impl.dart';

class HelpModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HelpBloc(helpRepository: HelpRepositoryImpl())),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HelpPage();

  static Inject get to => Inject<HelpModule>.of();
}
