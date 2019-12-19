class OfferQuery {
  static const String tryPurchase = r'''
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

    static const String getAllOffers = '''
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
}