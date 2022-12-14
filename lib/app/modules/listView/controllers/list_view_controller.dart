import 'package:get/get.dart';

import '../model/ModelOfData.dart';

class ListViewController extends GetxController {
  //TODO: Implement ListViewController
  RxList<ModelOfData> myModelList = <ModelOfData>[].obs;

  var mymodel=ModelOfData(id: "01",name: "anik Vai",value: '1').obs;
  var mymodel1=ModelOfData(id: "02",name: "sunny Vai",value: '2').obs;
  var mymodel2=ModelOfData(id: "03",name: "nahid Vai",value: '3').obs;


  var item =["a",'b',"c","d","e"].obs;
  void updateSingleItem(int index) {
    myModelList[0].name='dsfdsfdsf';
    myModelList.refresh();
    update();
  }
  final count = 0.obs;
  @override
  void onInit() {
    dataInsert();
    super.onInit();
  }
  RxString  myItem ='aminul vai'.obs;
  dataUpdate(int index){
    myModelList[index].name='sdfsdf';
    // myModelList.insert(index, mymodel);
    myModelList.value.map((e) =>e.name= myModelList[index].name );
  }

  dataInsert(){
    // ModelOfData mymodel=ModelOfData(id: "01",name: "anikVai",value: '1');
    // ModelOfData mymodel1=ModelOfData(id: "02",name: "sunny Vai",value: '2');
    // ModelOfData mymodel2=ModelOfData(id: "03",name: "nahid Vai",value: '3');

    myModelList.add(mymodel.value);
    myModelList.add(mymodel1.value);
    myModelList.add(mymodel2.value);



  }





}
