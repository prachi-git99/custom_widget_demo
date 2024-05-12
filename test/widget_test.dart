import 'package:custom_widget_test/screens/HomeScreen/widgets/customWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomPieChart renders correctly', (WidgetTester tester) async {
    final Map<String, double> counts = {'A': 10.0, 'B': 20.0, 'C': 30.0};
    final Widget widget = CustomPieChart(
      title: 'Test Chart',
      innerTitle: 'Total Items',
      legends: {'A': Colors.red, 'B': Colors.blue, 'C': Colors.green},
      counts: counts,
    );

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: widget)));

    // Verify if the title is displayed correctly
    expect(find.text('Test Chart'), findsOneWidget);

    // Verify if the inner title is displayed correctly
    expect(find.text('Total Items'), findsOneWidget);

    // Verify if the legends are displayed correctly
    expect(find.text('A'), findsOneWidget);
    expect(find.text('B'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);

    // You can add more verification checks as needed
  });
}
