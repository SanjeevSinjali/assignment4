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
        backgroundColor: Colors.deepPurple,
      ),

      body: Container(
        color: Colors.deepPurple.shade50,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Assignment - 4',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmployeeScreen(),
                      ),
                    );
                  },
                  child: const Text('Employee Screen'),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewScreen(),
                      ),
                    );
                  },
                  child: const Text('Grid View'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}