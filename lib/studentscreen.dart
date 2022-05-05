import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  final  id;
  const StudentScreen({ Key? key ,required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen2'),
      ),
    );
  }
}