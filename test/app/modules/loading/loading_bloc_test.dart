import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/loading/loading_bloc.dart';
import 'package:nubuy/app/modules/loading/loading_module.dart';

void main() {
  initModule(LoadingModule());
  LoadingBloc bloc;

  setUp(() {
    bloc = LoadingModule.to.bloc<LoadingBloc>();
  });

  group('LoadingBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<LoadingBloc>());
    });
  });
}
