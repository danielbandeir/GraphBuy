import 'package:nubuy/app/modules/loading/loading_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class LoadingModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => LoadingBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Container();

  static Inject get to => Inject<LoadingModule>.of();
}
