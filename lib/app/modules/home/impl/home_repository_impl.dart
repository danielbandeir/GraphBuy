import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:nubuy/app/modules/home/home_repository.dart';
import 'package:nubuy/app/shared/graphql/user_query.dart';
import 'package:nubuy/app/shared/models/user.model.dart';

class HomeRepositoryImpl extends Disposable implements HomeRepository {
  final GraphQLClient client;

  HomeRepositoryImpl({this.client});

  @override
  Future inputUserInfo() async {

    final QueryOptions options = QueryOptions(
        documentNode: gql(UserQuery.userInfo)
    );

    final QueryResult result = await client.query(options);
    UserModel user = UserModel.fromJson(result.data["viewer"]);
    var box = Hive.box('user');
    var get = box.get('data');
    if(get == null ) { box.put('data', UserModel(name: user.name, balance: user.balance, id: user.id)); }
  }

  @override
  void dispose() {}
}
