import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_view_controller.dart';

class ListViewView extends GetView<ListViewController> {
  const ListViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewView'),
        centerTitle: true,
      ),
      body: Obx(()=>ListView.builder(
          itemCount: controller.myModelList.value.length,
          itemBuilder: (BuildContext, int index){
            return ListTile(
              onTap: (){
                controller.updateSingleItem(index);
                print(controller.myModelList.value[0].name);
                print(controller.myModelList.value[1].name);
                print(controller.myModelList.value[2].name);
              },
              title: Obx(()=>Text("list index ${controller.myModelList[index].name}")),
            );
          }))
    );
  }
}
