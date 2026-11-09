import 'package:flutter_test/flutter_test.dart';
import 'package:belajarflutter/main.dart';

void main() {
  testWidgets('LoginPage smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Login'), findsWidgets);
    expect(find.text('Masukkan Username'), findsOneWidget);
    expect(find.text('Masukkan Password'), findsOneWidget);
  });
}
