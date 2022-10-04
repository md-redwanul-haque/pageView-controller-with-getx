import 'package:bd_gov_mochta_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';
import '../dropDown.dart';
import '../dynamicListView.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    //var formattedDate = DateFormat('hh:mm:ss EEE d-MMM-yyyy').format(now).obs;
    var formattedDate = DateFormat('d-MMM-yyyy').format(now).obs;
    controller.time=formattedDate.value;
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.WORK_PAGE);
                },
                child: Text(
                  '${formattedDate}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            //DynamicItenToListView(controller: controller)

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text("Name",style: TextStyle(fontSize: 12),),
            ),
            TextFormField(
              controller: controller.nameText,
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.lime,
                    ),
                  ),

                  focusColor: Get.theme.primaryColor,
                  filled: true,
                  fillColor: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text("Address",style: TextStyle(fontSize: 12),),
            ),
            TextFormField(
              controller: controller.addressText,
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.lime,
                    ),
                  ),

                  focusColor: Get.theme.primaryColor,
                  filled: true,
                  fillColor: Colors.white),
            ),




            Obx(() =>  ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.elementCount.value,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                    child: Container(
                      decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black26)),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 7,
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(controller.employees.value[index].name.toString(),
                                    maxLines: 1,
                                    style: Get.textTheme.bodyText1
                                        ?.apply(color:  Get.theme.primaryColor,)),
                                subtitle: Text(controller.employees.value[index].address.toString(),
                                    style: Get.textTheme.bodyText2, maxLines: 1),
                                onTap: () {},
                                onLongPress: () {},
                                dense: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
            ),





            Column(
              children: [
                DropDownButtonFormFiled(controller: controller, list: controller.wards,item: controller.ward.value,),
              ],
            ),
            ElevatedButton(onPressed: (){
              controller.addEmployee(controller.nameText.text, controller.addressText.text);


            }, child: Text("Save")),
            Obx(() =>  ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.itemCount.value,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                    child: Container(
                      decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black26)),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 7,
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(controller.employees.value[index].name.toString(),
                                    maxLines: 1,
                                    style: Get.textTheme.bodyText1
                                        ?.apply(color:  Get.theme.primaryColor,)),
                                subtitle: Text(controller.employees.value[index].address.toString(),
                                    style: Get.textTheme.bodyText2, maxLines: 1),
                                onTap: () {},
                                onLongPress: () {},
                                dense: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
                ),

          ],

        ),
      )

    );
  }
}


// ListTile(
// title: Text(controller.employees.value[index].name),
// subtitle: Text(controller.employees.value[index].address),
// );
