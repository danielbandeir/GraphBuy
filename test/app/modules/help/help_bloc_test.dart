import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/help/help_bloc.dart';
import 'package:nubuy/app/modules/help/help_module.dart';

void main() {
  initModule(HelpModule());
  HelpBloc bloc;

  setUp(() {
    bloc = HelpModule.to.bloc<HelpBloc>();
  });

  group('HelpBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<HelpBloc>());
    });
  });
}
