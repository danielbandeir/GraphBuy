import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:nubuy/app/app_repository.dart';
import 'package:nubuy/app/shared/models/user.model.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  final AppRepository appRepository = AppModule.to.getDependency<AppRepository>();
  final BehaviorSubject<bool> isVisible = new BehaviorSubject<bool>.seeded(false);
  final BehaviorSubject userControl = BehaviorSubject<UserModel>();

  Future<UserModel> getUser() async => await appRepository.getUserInfo();

  @override
  void dispose() {
    isVisible.close();
    userControl.close();
    super.dispose();
  }
}
