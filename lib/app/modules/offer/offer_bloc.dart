import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:nubuy/app/modules/offer/offer_repository.dart';
import 'package:nubuy/app/shared/models/offers.model.dart';

class OfferBloc extends BlocBase {
  final OfferRepository offerRepository;

  OfferBloc({this.offerRepository});


  Future<List<OfferModel>> getOffers() async => await offerRepository.getUserOffer();

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }
}
