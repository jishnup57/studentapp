import 'package:flutter/material.dart';
import 'package:studentapp1/add_student_widget.dart';
import 'package:studentapp1/db/functions/db_fuctions.dart';
import 'package:studentapp1/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudentWidget(),
            const Expanded(child: ListStudentWidget()
            ),
          ],
        ),
      ),
    );
  }
}
