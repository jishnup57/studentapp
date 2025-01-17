import 'package:hive_flutter/adapters.dart';
part 'data_model.g.dart';
@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
 final String name;
 @HiveField(2)
  final String age;
  @HiveField(3)
  final String roll_num;
  @HiveField(4)
  final String batch;
  StudentModel({required this.name, required this.age,required this.roll_num,required this.batch, this.id});
}