import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../model/elementModel.dart';
import '../model/spanModel.dart';

class TestpageController extends GetxController {
  //TODO: Implement TestpageController
  var spanSerialV=''.obs;
  var spanLengthV=''.obs;
  var spanSerial =TextEditingController();
  var spanLength =TextEditingController();

  var spanListForL = [].obs;
  var newList = [].obs;
  var spanCount =0.obs;
  var elementSerial =TextEditingController();
  var elementSerialV =''.obs;
  var elementName =''.obs;
  var spanSerialForElement =''.obs;
    var inventoryElementList =['a','b','c'].obs;
  var elementCount =0.obs;
  var sendData=[];
  Map<int, List> prepareData = Map<int, List>();
  var addCount =0.obs;
  void addData({required String eName,required String eSerial,required String spSerial, required String spLength,required int index}){
    addCount.value++;
    var aList=[];
    aList.add(eName);
    aList.add(eSerial);
    aList.add(spLength);
    aList.add(spSerial);
    var sendList=[];
    sendList.addAll(aList);
    prepareData[addCount.value]=sendList;
    sendData.addAll(prepareData.values);
    print(prepareData);

   }

  var spanModel= SpanModel().obs ;
  var forSpanData=[].obs;
  addSpan({required String length, required String serial}){
    spanModel.value =SpanModel(spanLength:spanLengthV.value ,spanSerial:spanSerialV.value );
    forSpanData.add(spanModel.value);
    spanCount.value =forSpanData.length;
    spanSerial.clear();
    spanLength.clear();


  }

  removeSpan(int index){
    forSpanData.removeAt(index);
    spanCount.value =forSpanData.length;
  }

  var elementModelObj=ElementModel().obs;
  var forElementData=[].obs;
  addElement(String eName,String eSerialNumber,String spanSeriaNo,String spanLength){
    elementModelObj.value =ElementModel(elementName: elementName.value,
      elementSerialNumber: elementSerial.text,
      spanSerialNumber: spanSerialForElement.value,
      spanLength: spanLengthV.value,
    );
    forElementData.add(elementModelObj.value);
    elementCount.value =forElementData.length;
    elementSerial.clear();
  }

  removeElement(int index){
    forElementData.removeAt(index);
    elementCount.value =forElementData.length;
  }


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
