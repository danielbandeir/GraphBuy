import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:nubuy/app/modules/offer/offer_repository.dart';
import 'package:nubuy/app/shared/graphql/offer_query.dart';
import 'package:nubuy/app/shared/models/offers.model.dart';
import 'package:nubuy/app/shared/models/purchase.model.dart';
import 'package:nubuy/app/shared/models/purchase_costumer.model.dart';
import 'package:nubuy/app/shared/models/user.model.dart';

class OfferRepositoryImpl extends Disposable implements OfferRepository {
  final GraphQLClient client;

  OfferRepositoryImpl({this.client});

  @override
  Future<List<OfferModel>> getUserOffer() async {
    final QueryOptions options = QueryOptions(
      documentNode: gql(OfferQuery.getAllOffers),
    );
    final QueryResult result = await client.query(options);
    List<OfferModel> userOffers =
        OfferModel.fromJsonList(await result.data["viewer"]["offers"]);
    return userOffers;
  }

  Future<bool> verifyIfHaveBalance(int balance, int price) async {
    return balance - price >= 0 ? true : false;
  }

  @override
  Future<PurchaseModel> purchaseOffer(String id, OfferModel offer) async {
    UserModel userModel = Hive.box('user').get("data");

    if (await verifyIfHaveBalance(userModel.balance, offer.price)) {
      final MutationOptions options = MutationOptions(
        documentNode: gql(OfferQuery.tryPurchase),
        variables: <String, dynamic>{
          'id': id,
        },
      );
      final QueryResult result = await client.mutate(options);
      PurchaseModel purchaseModel =
          PurchaseModel.fromJson(await result.data["purchase"]);
      if (purchaseModel.success) {
        await updateUserBalanceAndHistoric(userModel, offer);
      }
      return purchaseModel;
    } else {
      return PurchaseModel(
          success: false,
          errorMessage: "You don't have that much money.",
          customer:
              CustomerModel(balance: userModel.balance, id: userModel.id));
    }
  }

  @override
  void dispose() {}

  @override
  Future<void> updateUserBalanceAndHistoric(
      UserModel userInfo, OfferModel offer) async {
    var boxHistoric = await Hive.openBox('historic');
    await boxHistoric.add(offer);
    userInfo.balance = userInfo.balance - offer.price;
    await userInfo.save();
    await Hive.box('historic').close();
  }
}
