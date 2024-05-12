import 'package:custom_widget_test/screens/HomeScreen/widgets/customWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: CustomPieChart(
          title: 'Prospect by Status',
          innerTitle: 'Total Prospects',
          legends: {
            'Hot': Colors.red,
            'Warm': Colors.orangeAccent,
            'Cold': Colors.blue,
          },
          counts: {
            'Hot': 35,
            'Warm': 35,
            'Cold': 90,
          }),
    );
  }
}
