import 'package:flutter/material.dart';
import 'package:studentapp1/db/functions/db_fuctions.dart';
import 'package:studentapp1/db/model/data_model.dart';
import 'package:studentapp1/studentscreen.dart';



class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: StudentListNotifier,
      builder: (BuildContext ctx, List<StudentModel>StudentList, Widget? child){
        
        return  ListView.separated(
        itemBuilder: ((ctx, index) {
         final Data=StudentList[index];
        return ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx1){
              return StudentScreen(id:Data.id);
            }
            ),
            );
          },
          leading: Text(Data.roll_num),
          title: Text(Data.name),
          subtitle: Text(Data.age),
          trailing: IconButton(onPressed: (){
              if (Data.id != null) {
                deleteStudent(Data.id!);
              }else{
                print('unable to delete');
              }
          }, icon: Icon(Icons.delete_sweep_sharp)),
        );
      }
      ),
       separatorBuilder: (ctx,index){
         return const Divider();
      }, 
      itemCount: StudentList.length
      );
      } ,
      
    );
  }
}