import 'package:assignment2/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 4',
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}