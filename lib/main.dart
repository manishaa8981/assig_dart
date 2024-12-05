import 'package:assig/view/student_output_view.dart';
import 'package:assig/view/students_details_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const StudentDetailsView(),
        '/output': (context) => const StudentOutputView(),
      },
    ),
  );
}
