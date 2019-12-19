class OfferQuery {
  final String tryPurchase = r'''
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
}