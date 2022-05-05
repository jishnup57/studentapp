import 'package:flutter/cupertino.dart';
import 'package:studentapp1/db/model/data_model.dart';
import 'package:hive/hive.dart';

ValueNotifier< List<StudentModel>> StudentListNotifier=ValueNotifier([]);

Future<void> addStudent(StudentModel value) async {


 final StudentDB =await Hive.openBox<StudentModel>('Student_db');
 final _id =await StudentDB.add(value);
 value.id=_id;

 StudentListNotifier.value.add(value);
  StudentListNotifier.notifyListeners();
}


Future<void> getAllStudents() async{
  final StudentDB =await Hive.openBox<StudentModel>('Student_db');
  StudentListNotifier.value.clear();
  StudentListNotifier.value.addAll(StudentDB.values);
  StudentListNotifier.notifyListeners();
}
Future <void> deleteStudent  (int id)async {
final StudentDB =await Hive.openBox<StudentModel>('Student_db');
await StudentDB.delete(id);
getAllStudents();
 
}
 