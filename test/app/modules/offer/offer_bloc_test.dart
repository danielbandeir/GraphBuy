import 'package:nubuy/app/shared/models/offers.model.dart';
import 'package:test/test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/offer/offer_bloc.dart';
import 'package:nubuy/app/modules/offer/offer_module.dart';

void main() {
  initModule(OfferModule());
  OfferBloc bloc;

  setUp(() {
    bloc = OfferModule.to.getBloc<OfferBloc>();
  });

  group('OfferBloc Test', () {
    test("Verify if bloc is correctly", () {
      expect(bloc, isA<OfferBloc>());
    });

    test("Check if return offers correctly", () {
      expectLater(bloc.getOffers(), List<OfferModel>());
    });
  });
}
