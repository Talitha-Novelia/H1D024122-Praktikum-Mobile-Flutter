import 'package:flutter_test/flutter_test.dart';
import 'package:belajarflutter/main.dart';

void main() {
  testWidgets('ProdukPage smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title and cards are rendered.
    expect(find.text('List Data Produk'), findsOneWidget);
    expect(find.text('Kulkas'), findsOneWidget);
  });
}
