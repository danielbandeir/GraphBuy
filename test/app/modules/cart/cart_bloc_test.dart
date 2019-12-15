import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/cart/cart_bloc.dart';
import 'package:nubuy/app/modules/cart/cart_module.dart';

void main() {
  initModule(CartModule());
  CartBloc bloc;

  setUp(() {
    bloc = CartModule.to.bloc<CartBloc>();
  });

  group('CartBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<CartBloc>());
    });
  });
}
