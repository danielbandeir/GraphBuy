import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:graphql/client.dart';
import 'package:nubuy/app/shared/models/user.model.dart';

class AppRepository extends Disposable {
  final GraphQLClient client;

  AppRepository({this.client});

  Future<UserModel> getUserInfo() async {
    const String query = '''
      query getUser {
        viewer {
             id
             name
             balance
          }
      }
    ''';
    final QueryOptions options = QueryOptions(
      documentNode: gql(query)
    );

    final QueryResult result = await client.query(options);
    UserModel user = UserModel.fromJson(result.data["viewer"]);
    return user;
  }

  @override
  void dispose() {}
}
