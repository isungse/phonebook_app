import 'package:flutter/material.dart';
import 'package:phonebook_app/screens/department_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DepartmentScreen(),
    );
  }
}
