import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:graphql/client.dart';
import 'package:nubuy/app/shared/models/offers.model.dart';
import 'package:nubuy/app/shared/models/user.model.dart';

class OfferRepository extends Disposable {
  final GraphQLClient client;

  OfferRepository({this.client});

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
  void dispose() {}
}
