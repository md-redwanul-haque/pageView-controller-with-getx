import 'dart:math';

import 'package:bd_gov_mochta_app/app/modules/localdatabase/db/db_provider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/localdatabase_controller.dart';
import '../model/task_model.dart';

class LocaldatabaseView extends GetView<LocaldatabaseController> {
  Random id = Random();
  void check()async{
    controller.todoList.value=await DataBaseHelper.dbInstance.getTodos();
  }
  @override
  Widget build(BuildContext context) {
    check();
    print('controller.todoList.value${controller.todoList.value.length}');
    return Scaffold(
      appBar: AppBar(
        title: Text('LocaldatabaseView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: controller.title,
              decoration: InputDecoration(
                hintText: 'Title'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: controller.description,
              decoration: InputDecoration(
                  hintText: 'Description'
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            ElevatedButton(onPressed: () async{
              var todo = todoModel(
                id: id.nextInt(100),title: controller.title.text,description: controller.description.text,
              );

             await DataBaseHelper.dbInstance.addTodos(todo);
            }, child: Text('Add')),
            ElevatedButton(onPressed: (){}, child: Text("Update"))
          ],),

          // Obx(()=>controller.todoList.length!=null?Expanded(
          //   child: ListView.builder(
          //     itemCount: controller.todoList.length,
          //     itemBuilder: (BuildContext context,int index){
          //       return Card(
          //         child: ListTile(
          //           leading: Icon(Icons.person_pin,),
          //           title: Text('${controller.todoList[index].title}'),
          //           subtitle: Text('${controller.todoList[index].description}'),
          //           trailing: FittedBox(
          //             child: Row(
          //               children: [
          //                 IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
          //                 IconButton(onPressed: (){}, icon: Icon(Icons.delete))
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     },),
          // ):Container(),)

          Expanded(
            child: FutureBuilder(
              builder: (BuildContext ctx){},
            ),
          )




        ],
      )
    );
  }

}
