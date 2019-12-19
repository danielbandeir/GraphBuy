import 'package:test/test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/offer/offer_bloc.dart';
import 'package:nubuy/app/modules/offer/offer_module.dart';

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
