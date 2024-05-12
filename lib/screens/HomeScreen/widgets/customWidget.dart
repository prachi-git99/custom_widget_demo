import 'package:custom_widget_test/screens/HomeScreen/widgets/show_inner_text.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CustomPieChart extends StatelessWidget {
  final String title;
  final String innerTitle;
  final Map<String, Color> legends;
  final Map<String, double> counts;

  const CustomPieChart({
    super.key,
    required this.title,
    required this.innerTitle,
    required this.legends,
    required this.counts,
  });

  double get totalCount {
    double totalCount = 0;
    for (var item in counts.values) {
      totalCount = totalCount + item;
    }
    return totalCount;
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PieChart(
                      dataMap: counts,
                      chartType: ChartType.ring,
                      ringStrokeWidth: 10.0,
                      centerWidget: showInnerText(context, totalCount, innerTitle),
                      legendOptions: const LegendOptions(
                        legendPosition: LegendPosition.right,
                        showLegendsInRow: false,
                        legendTextStyle: TextStyle(fontSize: 12),
                      ),
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: false,
                        showChartValues: false,
                      ),
                      colorList: legends.values.toList(),
                      chartRadius: MediaQuery.of(context).size.width / 2.7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: counts.entries.map((entry) {
                        final percentage = (counts[entry.key] ?? 0) /
                            counts.values
                                .reduce((value, element) => value + element) *
                            100;
                        return Row(
                          children: [
                            Text("${entry.value}",
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 10.0),
                            Text('${percentage.toStringAsFixed(0)}%',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey))
                          ],
                        );
                      }).toList(),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
