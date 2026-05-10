import 'package:assignment2/models/employee_model.dart';
import 'package:flutter/material.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {

  TextEditingController employeeIDController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String gender = 'Male';

  List<EmployeeModel> employeeList = [];

  void savedEmployee() {

    if (employeeIDController.text.isEmpty ||
        fnameController.text.isEmpty ||
        departmentController.text.isEmpty ||
        usernameController.text.isEmpty ||
        passwordController.text.isEmpty) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all your credentials'),
        ),
      );

      return;
    }

    EmployeeModel employee = EmployeeModel(
      employeeID: employeeIDController.text,
      fname: fnameController.text,
      gender: gender,
      department: departmentController.text,
      username: usernameController.text,
      password: passwordController.text,
    );

    setState(() {
      employeeList.add(employee);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Employee Saved Successfully'),
      ),
    );

    employeeIDController.clear();
    fnameController.clear();
    departmentController.clear();
    usernameController.clear();
    passwordController.clear();

    setState(() {
      gender = 'Male';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Screen'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              'Employee ID',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 6),

            TextField(
              controller: employeeIDController,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Employee ID',
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Full Name',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 6),

            TextField(
              controller: fnameController,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Full Name',
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Gender',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 6),

            Row(
              children: [

                Radio<String>(
                  value: 'Male',
                  groupValue: gender,

                  onChanged: (value) {

                    setState(() {
                      gender = value!;
                    });
                  },
                ),

                const Text('Male'),

                const SizedBox(width: 20),

                Radio<String>(
                  value: 'Female',
                  groupValue: gender,

                  onChanged: (value) {

                    setState(() {
                      gender = value!;
                    });
                  },
                ),

                const Text('Female'),
              ],
            ),

            const SizedBox(height: 16),

            const Text(
              'Department',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 6),

            TextField(
              controller: departmentController,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Department',
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Username',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 6),

            TextField(
              controller: usernameController,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Username',
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Password',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 6),

            TextField(
              controller: passwordController,
              obscureText: true,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
              ),
            ),

            const SizedBox(height: 24),

            Center(
              child: ElevatedButton(
                onPressed: savedEmployee,
                child: const Text('Save Employee'),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Employee List',

              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            employeeList.isEmpty
                ? const Text('No employees added yet.')

                : Column(
                    children: employeeList.map((emp) {

                      return Card(
                        child: ListTile(

                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                          ),

                          title: Text(emp.fname),

                          subtitle: Text(
                            '${emp.employeeID} - ${emp.department}',
                          ),

                          trailing: Text(emp.gender),
                        ),
                      );
                    }).toList(),
                  ),
          ],
        ),
      ),
    );
  }
}