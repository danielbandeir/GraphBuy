import 'package:nubuy/app/modules/cart/cart_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/cart/cart_page.dart';

class CartModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => CartBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => CartPage();

  static Inject get to => Inject<CartModule>.of();
}
