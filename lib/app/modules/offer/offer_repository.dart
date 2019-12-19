import 'package:nubuy/app/shared/models/offers.model.dart';
import 'package:nubuy/app/shared/models/purchase.model.dart';
import 'package:nubuy/app/shared/models/user.model.dart';

abstract class OfferRepository {
  Future<List<OfferModel>> getUserOffer();
  Future<PurchaseModel> purchaseOffer(String id, OfferModel offer);
  Future<bool> verifyIfHaveBalance(int balance, int price);
  Future<void> updateUserBalanceAndHistoric(UserModel userInfo, OfferModel offer);
}