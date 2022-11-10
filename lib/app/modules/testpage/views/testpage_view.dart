import 'package:bd_gov_mochta_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/testpage_controller.dart';

class TestpageView extends GetView<TestpageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestpageView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //spanMethod(0),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: TextFormField(
                      onChanged: (v){
                        controller.spanSerialV.value=v;
                      },
                      controller: controller.spanSerial,
                      decoration: InputDecoration(hintText: "Span Serial"),
                    )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                     onChanged: (v){
                       controller.spanLengthV.value=v;
                     },
                      controller: controller.spanLength,
                      decoration: InputDecoration(hintText: "Span Length"),
                    )),
              ],
            ),


            ElevatedButton(onPressed: () async{
              controller.addSpan(length: controller.spanLengthV.value,serial: controller.spanSerialV.value);
                var aList =[].obs;
                controller.spanListForL.value.add(controller.spanSerialV.value);
                aList.value.addAll(controller.spanListForL.value);
              controller.newList.value =await aList.value;
              print(controller.spanListForL);
            }, child: Text("Add Span")),

            SizedBox(
              height: 10,
            ),
          Row(
            children: [
              //elementName
                Expanded(
                  flex: 2,
                  child: Obx(
                    () => DropdownButtonFormField(
                      isExpanded: true,
                      decoration: InputDecoration(border: InputBorder.none),
                      // value: controller.inventoryElementList.length != 0
                      //     ? controller.inventoryElementList[0]
                      //     : null,
                      //value:controller.inventoryElementList.isNotEmpty?controller.inventoryElementList[0] : null,
                      hint: Text(
                        'Elements',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.amberAccent,
                        ),
                      ),

                      items: controller.inventoryElementList
                          .map((category) {
                        return DropdownMenuItem(
                            value: category,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(category,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.amberAccent,
                                  ),
                                  overflow: TextOverflow.ellipsis),
                            ));
                      }).toList(),
                      onChanged: (newValue) {

                        print(newValue.toString());
                        controller.elementName.value=newValue.toString();
                        print(controller.elementName.value);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    onChanged: (v){
                      controller.elementSerialV.value=v;
                    },
                    controller: controller.elementSerial,
                    decoration: InputDecoration(hintText: "Serial",
                    hintStyle: TextStyle(
                      fontSize: 12
                    )
                    ),
                  )),
                Expanded(
                flex: 2,
                child: Obx(
                      () => DropdownButtonFormField(
                    isExpanded: true,
                    decoration: InputDecoration(border: InputBorder.none),

                    //value:controller.newList.isNotEmpty?controller.newList[0]. : null,
                    hint: Text(
                      'Span Serial',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue
                      ),
                    ),

                    items: controller.newList.value
                        .map(( category) {
                      return DropdownMenuItem(
                          value: category,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(category,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.amberAccent,
                                ),
                                overflow: TextOverflow.ellipsis),
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      controller.spanSerialForElement.value =newValue.toString();
                      print(controller.spanSerialForElement.value);
                    },
                  ),
                ),
                // Obx(
                //       () => DropdownButtonFormField(
                //     isExpanded: true,
                //     decoration: InputDecoration(border: InputBorder.none),
                //
                //     //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                //     hint: Text(
                //       'Select Your Sapn',
                //       style: TextStyle(
                //         fontSize: 12,
                //         color: AppColors.primary_color,
                //       ),
                //     ),
                //
                //     items: controller.spanListForL
                //         .map((String category) {
                //       return DropdownMenuItem(
                //           value: category.toString(),
                //           child: Padding(
                //             padding: const EdgeInsets.only(left: 12),
                //             child: Text(category!,
                //                 style: TextStyle(
                //                   fontSize: 12,
                //                   color: AppColors.primary_color,
                //                 ),
                //                 overflow: TextOverflow.ellipsis),
                //           ));
                //     }).toList(),
                //     onChanged: (newValue) {
                //       print(newValue);
                //     },
                //   ),
                // ),
              )
            ],
          ),

            // Obx(()=>Text(controller.count.value.toString())),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              controller.addElement(controller.elementName.value,
                  controller.elementSerialV.value,
                  controller.spanSerialForElement.value,
                  controller.spanLengthV.value);
            }, child: Text("Add Element")),

            Obx(()=> ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.elementCount.value,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black26)),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text("Element Name :"+controller.forElementData[index].elementName.toString()),
                              Text("Element Serial :"+controller.forElementData[index].elementSerialNumber.toString()),
                              Text("Span Serial :"+controller.forElementData[index].spanSerialNumber.toString()),
                              Text("Span Length :"+controller.forElementData[index].spanLength.toString()),
                            ]
                            ),
                            onTap: (){
                              controller.addCount.value++;
                              controller.addData(eName:controller.forElementData[index].elementName.toString() ,
                                  spSerial: controller.forElementData[index].spanSerialNumber.toString(),
                                  eSerial: controller.forElementData[index].elementSerialNumber.toString(),
                                  spLength: controller.forElementData[index].spanLength.toString(),
                                index: index
                              );
                              // controller.model.rbmPhyCharspanModels?[index].spanName=controller.forElementData[index].spanSerialNumber.toString();
                              // controller.model.rbmPhyCharspanModels?[index].spanLength=controller.forElementData[index].spanLength.toString();
                              // controller.model.rbmPhyCharspanModels?[index].components?[index].elementSerial=int.parse(controller.forElementData[index].elementSerialNumber.toString());
                              // controller.model.rbmPhyCharspanModels?[index].components?[index].componentId=int.parse(controller.forElementData[index].elementName.toString());
                              // rbmPhyCharspanModels[index].spanName=controller.forElementData[index].spanSerialNumber.toString();
                            },
                            trailing: IconButton(onPressed: (){
                              controller.removeElement(index);
                            },icon: Icon(Icons.clear)),
                            dense: false,
                          ),
                        ),
                      ],
                    ),
                  );
                }),),
        ],
      )
    );
  }
}
