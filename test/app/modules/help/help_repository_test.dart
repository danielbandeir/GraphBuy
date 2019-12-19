import 'package:nubuy/app/modules/help/help_repository.dart';
import 'package:nubuy/app/modules/help/impl/help_repository_impl.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class MockClient extends Mock {}

void main() {
  HelpRepository repository;
  MockClient client;

  setUp(() {
    repository = HelpRepositoryImpl();
    client = MockClient();
  });

  group('HelpRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<HelpRepository>());
    });
  });
}
