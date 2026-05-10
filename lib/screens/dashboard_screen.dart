import 'package:assignment2/screens/employee_screen.dart';
import 'package:assignment2/screens/grid_view_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Assignment - 4',
            style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => EmployeeScreen()),
                );
            }, 
            child: Text('Employee Screen'),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => GridViewScreen()),
                );
            }, 
            child: Text('Grid View'),
            ),
          ],
        ),
      ),
    );
  }
}