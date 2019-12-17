import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/subjects.dart';

class HomeBloc extends BlocBase {
  BehaviorSubject<bool> isVisible = new BehaviorSubject<bool>.seeded(false);
  
  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    isVisible.close();
    super.dispose();
  }
}
