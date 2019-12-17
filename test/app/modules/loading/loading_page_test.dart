import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/loading/loading_page.dart';

main() {
  testWidgets('LoadingPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(LoadingPage(title: 'Loading')));
    final titleFinder = find.text('Loading');
    expect(titleFinder, findsOneWidget);
  });
}
