import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:nubuy/app/modules/offer/offer_repository.dart';
import 'package:nubuy/app/shared/models/offers.model.dart';
import 'package:nubuy/app/shared/models/purchase.model.dart';

class OfferRepositoryImpl extends Disposable implements OfferRepository {
  final GraphQLClient client;

  OfferRepositoryImpl({this.client});

  @override
  Future<List<OfferModel>> getUserOffer() async {
    const String query = '''
    {
      viewer {
        offers {
          id
          price
          product {
            id
            name
            description
            image
          }
        }
      }
    }
    ''';
    final QueryOptions options = QueryOptions(
        documentNode: gql(query),

    );
    final QueryResult result = await client.query(options);
    List<OfferModel> userOffers = OfferModel.fromJsonList(await result.data["viewer"]["offers"]);
    return userOffers;
  }

  @override
  Future<PurchaseModel> purchaseOffer(String id, OfferModel offer) async {
    const String tryPurchase = r'''
    mutation tryPurcgase($id: ID!) {
      purchase(offerId: $id) {
        success,
        errorMessage,
        customer {
          id
          balance
        }
      }
    }
    ''';

    final MutationOptions options = MutationOptions(
      documentNode: gql(tryPurchase),
      variables: <String, dynamic>{
        'id': id,
      },
    );

    final QueryResult result = await client.mutate(options);
    PurchaseModel purchaseModel = PurchaseModel.fromJson(await result.data["purchase"]);

    if(purchaseModel.success) {
      var historic = Hive.box('historic');
      historic.add(offer);
    }

    return purchaseModel;
  }

  @override
  void dispose() {}
}
