import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nu_buy/app/modules/offer/offer_bloc.dart';
import 'package:nu_buy/app/modules/offer/offer_module.dart';

void main() {
  initModule(OfferModule());
  OfferBloc bloc;

  setUp(() {
    bloc = OfferModule.to.bloc<OfferBloc>();
  });

  group('OfferBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<OfferBloc>());
    });
  });
}
