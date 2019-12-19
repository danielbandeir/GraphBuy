import 'package:nubuy/app/modules/offer/impl/offer_repository_impl.dart';
import 'package:nubuy/app/modules/offer/offer_repository.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class MockClient extends Mock {}

void main() {
  OfferRepository repository;
  MockClient client;

  setUp(() {
    repository = OfferRepositoryImpl();
    client = MockClient();
  });

  group('OfferRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<OfferRepository>());
    });

  });
}
