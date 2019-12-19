import 'package:test/test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/app_bloc.dart';
import 'package:nubuy/app/app_module.dart';

void main() {
  initModule(AppModule());
  AppBloc bloc;

  setUp(() {
    bloc = AppModule.to.bloc<AppBloc>();
  });

  group('AppBloc Test', () {
    test("Verify is bloc is a really instance of AppModule", () {
      expect(bloc, isA<AppBloc>());
    });
  });
}
