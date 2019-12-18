import 'package:nubuy/app/shared/models/offers.model.dart';
import 'package:nubuy/app/shared/models/purchase.model.dart';

abstract class OfferReṕository {
  Future<List<OfferModel>> getUserOffer();
  Future<PurchaseModel> purchaseOffer(String id);
}