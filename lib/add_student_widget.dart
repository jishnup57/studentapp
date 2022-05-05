import 'package:flutter/material.dart';
import 'package:studentapp1/db/functions/db_fuctions.dart';
import 'package:studentapp1/db/model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({Key? key}) : super(key: key);
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _rollNumberController=TextEditingController();
  final _batchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(padding:const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
        const SizedBox(height: 10,),
          TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
          ),
          const SizedBox(height: 10.0,),
          TextFormField(
            controller: _rollNumberController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'roll number',
            ),
          ),
          const SizedBox(height: 10.0,),
          TextFormField(
            controller: _batchController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Batch',
            ),
          ),
         const SizedBox(height: 10.0,),
          ElevatedButton.icon(onPressed: (){
             onAddStudentButtonClicked();
          },
          icon:const Icon(Icons.add) , 
          label:const Text('Add Student'),
           ),
         
        ],
      ),
    );
  }
  Future<void> onAddStudentButtonClicked() async{
    final _name=_nameController.text.trim();
    final _age=_ageController.text.trim();
    final _num=_rollNumberController.text.trim();
    final _batch=_batchController.text.trim();
    if (_name.isEmpty||_age.isEmpty||_num.isEmpty||_batch.isEmpty) {
      return;
    }
    //print('$_name $_age');

    final _student=StudentModel(age: _age,name: _name,roll_num:_num,batch:_batch);
    addStudent(_student);
  }
}
