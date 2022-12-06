import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/multiple_image_controller.dart';

class MultipleImageView extends GetView<MultipleImageController> {
  @override
  List<int> items =[1,2,3,4,5];

   List<int> _list = List.generate(20, (i) => i).obs;
     List<bool> _selected = List.generate(20, (i) => false).obs;
  RxList<bool> myList = <bool>[].obs; // Fill it with false initially
check(){
  for(var item in items){
    myList.value=List.generate(item, (i) => false);
  }
  print('myList.value${myList.value}');
}
    Widget build(BuildContext context) {
      check();
      return Scaffold(
        body: ListView.builder(
          itemCount: myList.value.length,
          itemBuilder: (_, i) {
            return GestureDetector(
              onTap: (){
                for(int inv=0;inv<myList.length;inv++){

                }
                if(myList[i]==1){
                  myList[i] == myList[i];
                }
                else{
                  myList[i] = myList[i];
                }


              },
              child: Obx(()=>ListTile(
                tileColor: myList[i]? Colors.blue : null, // If current item is selected show blue color
                title: Text('Item ${myList[i]}'),
                // Reverse bool value
              ),)
            );
          },
        ),

      );
    }
  }

