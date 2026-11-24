import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:belajarflutter/main.dart';
import 'package:belajarflutter/model/produk.dart';
import 'package:belajarflutter/ui/login_page.dart';
import 'package:belajarflutter/ui/produk_detail.dart';
import 'package:belajarflutter/ui/produk_form.dart';
import 'package:belajarflutter/ui/registrasi_page.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  testWidgets('MyApp shows LoginPage when token is null', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.byType(LoginPage), findsOneWidget);
    expect(find.text('Login'), findsNWidgets(2));
  });

  testWidgets('LoginPage validates form and navigates to RegistrasiPage', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    expect(find.text('Login'), findsNWidgets(2));

    // Clear fields to test validation
    await tester.enterText(find.byType(TextFormField).at(0), '');
    await tester.enterText(find.byType(TextFormField).at(1), '');
    await tester.tap(find.widgetWithText(ElevatedButton, 'Login'));
    await tester.pump();

    expect(find.text('Email harus diisi'), findsOneWidget);
    expect(find.text('Password harus diisi'), findsOneWidget);

    await tester.tap(find.text('Registrasi'));
    await tester.pumpAndSettle();

    expect(find.byType(RegistrasiPage), findsOneWidget);
    expect(find.text('Registrasi'), findsNWidgets(2));
  });

  testWidgets('RegistrasiPage validates input fields correctly', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: RegistrasiPage()));

    // Clear fields to test validation
    await tester.enterText(find.byType(TextFormField).at(0), '');
    await tester.enterText(find.byType(TextFormField).at(1), '');
    await tester.enterText(find.byType(TextFormField).at(2), '');
    await tester.tap(find.widgetWithText(ElevatedButton, 'Registrasi'));
    await tester.pump();

    expect(find.text('Nama harus diisi minimal 3 karakter'), findsOneWidget);
    expect(find.text('Email harus diisi'), findsOneWidget);
    expect(find.text('Password harus diisi minimal 6 karakter'), findsOneWidget);
  });

  testWidgets('ProdukForm validates tambah produk and binds ubah produk', (
    WidgetTester tester,
  ) async {
    // Mode Tambah
    await tester.pumpWidget(MaterialApp(home: ProdukForm(key: const ValueKey('add'))));
    expect(find.text('TAMBAH PRODUK'), findsOneWidget);
    expect(find.widgetWithText(OutlinedButton, 'SIMPAN'), findsOneWidget);

    await tester.tap(find.widgetWithText(OutlinedButton, 'SIMPAN'));
    await tester.pump();

    expect(find.text('Kode Produk harus diisi'), findsOneWidget);
    expect(find.text('Nama Produk harus diisi'), findsOneWidget);
    expect(find.text('Harga harus diisi'), findsOneWidget);

    // Mode Ubah
    final testProduk = Produk(
      id: 1,
      kodeProduk: 'A001',
      namaProduk: 'Kamera',
      hargaProduk: 5000000,
    );

    await tester.pumpWidget(MaterialApp(
      home: ProdukForm(key: const ValueKey('edit'), produk: testProduk),
    ));
    await tester.pumpAndSettle();

    expect(find.text('UBAH PRODUK'), findsOneWidget);
    expect(find.widgetWithText(OutlinedButton, 'UBAH'), findsOneWidget);
    expect(find.text('A001'), findsOneWidget);
    expect(find.text('Kamera'), findsOneWidget);
    expect(find.text('5000000'), findsOneWidget);
  });

  testWidgets('ProdukDetail displays info and handles dialogs', (
    WidgetTester tester,
  ) async {
    final testProduk = Produk(
      id: 1,
      kodeProduk: 'A001',
      namaProduk: 'Kamera',
      hargaProduk: 5000000,
    );

    await tester.pumpWidget(MaterialApp(home: ProdukDetail(produk: testProduk)));

    expect(find.text('Detail Produk'), findsOneWidget);
    expect(find.text('Kode : A001'), findsOneWidget);
    expect(find.text('Nama : Kamera'), findsOneWidget);
    expect(find.text('Harga : Rp. 5000000'), findsOneWidget);
    expect(find.widgetWithText(OutlinedButton, 'EDIT'), findsOneWidget);
    expect(find.widgetWithText(OutlinedButton, 'DELETE'), findsOneWidget);

    await tester.tap(find.widgetWithText(OutlinedButton, 'DELETE'));
    await tester.pumpAndSettle();

    expect(find.text('Yakin ingin menghapus data ini?'), findsOneWidget);
    expect(find.text('Ya'), findsOneWidget);
    expect(find.text('Batal'), findsOneWidget);

    await tester.tap(find.text('Batal'));
    await tester.pumpAndSettle();
    expect(find.text('Yakin ingin menghapus data ini?'), findsNothing);
  });
}
