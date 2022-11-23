import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/localdatabase_controller.dart';

class LocaldatabaseView extends GetView<LocaldatabaseController> {
  @override
  Widget build(BuildContext context) {
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
            child: TextFormField(),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            ElevatedButton(onPressed: (){}, child: Text('Add')),
            ElevatedButton(onPressed: (){}, child: Text("Update"))
          ],),

          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context,int index){
              return Card(
                child: ListTile(
                  leading: Icon(Icons.person_pin,),
                  title: Text('Title'),
                  subtitle: Text('Description'),
                  trailing: FittedBox(
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                ),
              );
            },),
          ),

          myWidget(context)


        ],
      )
    );
  }
  Widget myWidget(BuildContext context) {
    return
    GridView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.amber,
              child: Center(child: Text('$index')),
            );
          }
      );

  }
}
