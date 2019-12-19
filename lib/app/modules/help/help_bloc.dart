import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:nubuy/app/modules/help/help_repository.dart';

class HelpBloc extends BlocBase {
  final HelpRepository helpRepository;

  HelpBloc({this.helpRepository});

  Future<void> clearHistoricAndUserData() async => await helpRepository.clearData();

  @override
  void dispose() {
    super.dispose();
  }
}
