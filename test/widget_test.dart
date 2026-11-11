import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:belajarflutter/main.dart';

void main() {
  testWidgets('RegistrasiPage renders fields and validates form', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Registrasi'), findsNWidgets(2));
    expect(find.text('Nama'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Konfirmasi Password'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, 'Registrasi'));
    await tester.pump();

    expect(find.text('Nama harus diisi minimal 3 karakter'), findsOneWidget);
    expect(find.text('Email harus diisi'), findsOneWidget);
    expect(find.text('Password harus diisi minimal 6 karakter'), findsOneWidget);

    await tester.enterText(find.widgetWithText(TextFormField, 'Nama'), 'Budi');
    await tester.enterText(
      find.widgetWithText(TextFormField, 'Email'),
      'budi@example.com',
    );
    await tester.enterText(
      find.widgetWithText(TextFormField, 'Password'),
      'secret123',
    );
    await tester.enterText(
      find.widgetWithText(TextFormField, 'Konfirmasi Password'),
      'different',
    );

    await tester.tap(find.widgetWithText(ElevatedButton, 'Registrasi'));
    await tester.pump();

    expect(find.text('Konfirmasi Password tidak sama'), findsOneWidget);
  });
}
