import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/historic/historic_bloc.dart';
import 'package:nubuy/app/modules/historic/historic_module.dart';

void main() {
  initModule(HistoricModule());
  HistoricBloc bloc;

  setUp(() {
    bloc = HistoricModule.to.bloc<HistoricBloc>();
  });

  group('HistoricBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<HistoricBloc>());
    });
  });
}
