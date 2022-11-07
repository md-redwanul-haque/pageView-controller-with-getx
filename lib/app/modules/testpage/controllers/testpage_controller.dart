import 'package:get/get.dart';

class TestpageController extends GetxController {
  //TODO: Implement TestpageController

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

    // model.rbmPhyCharspanModels?[0].invNo=65.0;
    // model.rbmPhyCharspanModels?[0].slNo=211.0;
    //
    // model.rbmPhyCharspanModels?[0].components?[0].elementSerial=int.parse(eSerial.toString());
    // model.rbmPhyCharspanModels?[0].components?[0].componentId=int.parse(eName.toString());
    print(prepareData);
    //rbmPhyCharspanModels[index].rbmPhyCharspanModels[index]
    //for post
    // print("eName${eName}");
    // print("eSerial${eSerial}");
    // print("spSerial${spSerial}");
   }

  // var spanModel= SpanModel().obs ;
  // addSpan({required String length, required String serial}){
  //   spanModel.value =SpanModel(spanLength:spanLengthV.value ,spanSerial:spanSerialV.value );
  //   forSpanData.add(spanModel.value);
  //   spanCount.value =forSpanData.length;
  //   spanSerial.clear();
  //   spanLength.clear();
  //   //spanListForL.value.add(spanName.text);
  //
  // }

  // removeSpan(int index){
  //   forSpanData.removeAt(index);
  //   spanCount.value =forSpanData.length;
  // }

  // var elementModelObj=ElementModel().obs;
  // addElement(String eName,String eSerialNumber,String spanSeriaNo,String spanLength){
  //   elementModelObj.value =ElementModel(elementName: elementName.value,
  //     elementSerialNumber: elementSerial.text,
  //     spanSerialNumber: spanSerialForElement.value,
  //     spanLength: spanLengthV.value,
  //   );
  //   forElementData.add(elementModelObj.value);
  //   elementCount.value =forElementData.length;
  //   elementSerial.clear();
  // }
  //
  // removeElement(int index){
  //   forElementData.removeAt(index);
  //   elementCount.value =forElementData.length;
  // }


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
