import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:nubuy/app/modules/cart/cart_page.dart';

main() {
  testWidgets('CartPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CartPage(title: 'Cart')));
    final titleFinder = find.text('Cart');
    expect(titleFinder, findsOneWidget);
  });
}
