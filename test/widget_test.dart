import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:indian_sports_authority/main.dart';

void main() {
  testWidgets('Indian Sports Authority shows login screen', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify app title is shown.
    expect(find.text('Indian Sports Authority'), findsOneWidget);

    // Verify Login button is visible.
    expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);

    // Optionally check for email and password fields.
    expect(find.widgetWithText(TextFormField, 'Email'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'Password'), findsOneWidget);
  });
}
