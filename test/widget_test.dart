import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todolistapp/main.dart';

void main() {
  testWidgets('ToDoApp render test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ToDoApp());

    // Verify that the title is present
    expect(find.text('My Tasks'), findsOneWidget);

    // Verify that the Add button is present
    expect(find.text('Add'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}