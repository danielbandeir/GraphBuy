import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/historic/historic_page.dart';

main() {
  testWidgets('HistoricPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(HistoricPage()));
    final titleFinder = find.text('Historic');
    expect(titleFinder, findsOneWidget);
  });
}
