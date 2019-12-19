import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/help/help_page.dart';

main() {
  testWidgets('HelpPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HelpPage(title: 'Help')));
    final titleFinder = find.text('Help');
    expect(titleFinder, findsOneWidget);
  });
}
