import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:hive/hive.dart';
import 'package:nubuy/app/modules/home/home_repository.dart';
import 'package:nubuy/app/shared/models/user.model.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BlocBase {
  final HomeRepository homeRepository;
  final BehaviorSubject userControl = BehaviorSubject<UserModel>();

  HomeBloc({this.homeRepository});

  Future<UserModel> getUser() async => await homeRepository.inputUserInfo();

  Future updateVisible(bool isVisible) async => await homeRepository.updatedVisibility(isVisible);

  @override
  void dispose() {
    userControl.close();
    super.dispose();
  }
}
