import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:nubuy/app/modules/home/home_repository.dart';
import 'package:nubuy/app/shared/models/user.model.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BlocBase {
  final HomeRepository homeRepository;
  final BehaviorSubject<bool> isVisible =
      new BehaviorSubject<bool>.seeded(false);
  final BehaviorSubject userControl = BehaviorSubject<UserModel>();

  HomeBloc({this.homeRepository});

  Future<UserModel> getUser() async => await homeRepository.inputUserInfo();

  @override
  void dispose() {
    isVisible.close();
    userControl.close();
    super.dispose();
  }
}
