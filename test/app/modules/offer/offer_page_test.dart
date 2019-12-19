import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/offer/offer_page.dart';

main() {
  testWidgets('OfferPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(OfferPage()));
    final titleFinder = find.text('Offer');
    expect(titleFinder, findsOneWidget);
  });
}
