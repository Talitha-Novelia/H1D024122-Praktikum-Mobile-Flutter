import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:belajarflutter/main.dart';
import 'package:belajarflutter/ui/login_page.dart';
import 'package:belajarflutter/ui/registrasi_page.dart';

void main() {
  testWidgets('ProdukPage renders list, navigates to form and detail', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('List Produk'), findsOneWidget);
    expect(find.text('Kamera'), findsOneWidget);
    expect(find.text('5000000'), findsOneWidget);
    expect(find.text('Kulkas'), findsOneWidget);
    expect(find.text('Mesin Cuci'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.text('TAMBAH PRODUK'), findsOneWidget);
    await tester.tap(find.widgetWithText(OutlinedButton, 'SIMPAN'));
    await tester.pump();

    expect(find.text('Kode Produk harus diisi'), findsOneWidget);
    expect(find.text('Nama Produk harus diisi'), findsOneWidget);
    expect(find.text('Harga harus diisi'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Kamera'));
    await tester.pumpAndSettle();

    expect(find.text('Detail Produk'), findsOneWidget);
    expect(find.text('Kode : A001'), findsOneWidget);
    expect(find.text('Nama : Kamera'), findsOneWidget);
    expect(find.text('Harga : Rp. 5000000'), findsOneWidget);

    final OutlinedButton editButton = tester.widget(
      find.widgetWithText(OutlinedButton, 'EDIT'),
    );
    final OutlinedButton deleteButton = tester.widget(
      find.widgetWithText(OutlinedButton, 'DELETE'),
    );
    expect(editButton.style?.backgroundColor?.resolve({}), Colors.green);
    expect(editButton.style?.foregroundColor?.resolve({}), Colors.black);
    expect(deleteButton.style?.backgroundColor?.resolve({}), Colors.red);
    expect(deleteButton.style?.foregroundColor?.resolve({}), Colors.black);

    await tester.tap(find.widgetWithText(OutlinedButton, 'EDIT'));
    await tester.pumpAndSettle();

    expect(find.text('UBAH PRODUK'), findsOneWidget);
    expect(find.text('A001'), findsOneWidget);
    expect(find.widgetWithText(OutlinedButton, 'UBAH'), findsOneWidget);
  });

  testWidgets('LoginPage validates form and navigates to RegistrasiPage', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    expect(find.text('Login'), findsNWidgets(2));
    await tester.tap(find.widgetWithText(ElevatedButton, 'Login'));
    await tester.pump();

    expect(find.text('Email harus diisi'), findsOneWidget);
    expect(find.text('Password harus diisi'), findsOneWidget);

    await tester.tap(find.text('Registrasi'));
    await tester.pumpAndSettle();

    expect(find.byType(RegistrasiPage), findsOneWidget);
  });
}
