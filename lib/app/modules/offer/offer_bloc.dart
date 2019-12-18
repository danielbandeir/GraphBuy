import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:connectivity/connectivity.dart';
import 'package:nubuy/app/modules/offer/offer_repository.dart';
import 'package:nubuy/app/shared/models/offers.model.dart';

import 'package:nubuy/app/shared/models/purchase.model.dart';
import 'package:rxdart/rxdart.dart';

class OfferBloc extends BlocBase {
  final OfferRepository offerRepository;

  OfferBloc({this.offerRepository});

  final BehaviorSubject<ConnectivityResult> connect = BehaviorSubject<ConnectivityResult>();


  Future<List<OfferModel>> getOffers() async => await offerRepository.getUserOffer();

  Future<PurchaseModel> purchaseItem(String id) async => await offerRepository.purchaseOffer(id);

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    connect.close();
    super.dispose();
  }
}
