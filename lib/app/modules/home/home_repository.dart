import 'package:nubuy/app/shared/models/user.model.dart';

abstract class HomeRepository {
  Future<UserModel> getUserInfo();
}
