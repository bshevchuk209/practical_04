import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practical_04/main.dart';

void main() {
  testWidgets('Лічильник додає 3 після кожного натискання', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    expect(find.text('3'), findsOneWidget);
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    expect(find.text('6'), findsOneWidget);
  });
}
