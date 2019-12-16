import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/subjects.dart';

class CartBloc extends BlocBase {
  BehaviorSubject<bool> cardToggle = new BehaviorSubject<bool>();
  

  @override
  void dispose() {
    cardToggle.close();
    super.dispose();
  }
}
