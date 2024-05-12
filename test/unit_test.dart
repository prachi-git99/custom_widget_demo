import 'package:custom_widget_test/screens/HomeScreen/widgets/customWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomPieChart', () {
    test('calculates total count correctly', () {
      final counts = {'A': 10.0, 'B': 20.0, 'C': 30.0};
      final chart = CustomPieChart(
        title: 'Test Chart',
        innerTitle: 'Total Items',
        legends: {'A': Colors.red, 'B': Colors.blue, 'C': Colors.green},
        counts: counts,
      );

      expect(chart.totalCount, 60.0);
    });
  });
}