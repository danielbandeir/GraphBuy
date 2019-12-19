import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:hive/hive.dart';
import 'package:nubuy/app/modules/help/help_repository.dart';

class HelpRepositoryImpl extends Disposable implements HelpRepository {

  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  Future clearData() async {
    await Hive.openBox('historic');

    await Hive.box('user').delete('data');
    await Hive.box('historic').clear();

    await Hive.box('historic').close();
  }
}
