import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


import '../employee_model.dart';

class HomeController extends GetxController {
  var time ='';
  //TODO: Implement HomeController
  var employees =<EmployeeModel>[].obs;
  var  nameText =TextEditingController();
  var addressText = TextEditingController();
  final itemCount = 0.obs;
  late var  Employee;



  late var ElementS;
  var elementS =<Elements>[].obs;
  final elementCount = 0.obs;
  List testList =[];


  late var ElmentsDetails;
  var ElmentsDetailsLists =<ElementDetails>[].obs;








  
  var wards =[
    'Element-1',
    'Element-2',
    'Element-3',
    'Element-4',
    'Element-5',
    'Element-6',
    'Element-7',
    'Element-8',
    'Element-9',
  ];
  var ward = "".obs;
  var firstPageIsClicked = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameText.dispose();
    addressText.dispose();
  }

  addEmployee(String name, String address){

    Employee =EmployeeModel(name:name,address:address );
    employees.value.add(Employee);
    itemCount.value = employees.value.length;
    nameText.clear();
    addressText.clear();

  }

  removeEmployee(int index){

    employees.value.removeAt(index);
    itemCount.value = employees.value.length;

  }

  addElement(elementSetails){

    ElementS =Elements(elementDetails:elementSetails );
    elementS.value.add(ElementS);
    elementCount.value = elementS.value.length;
    testList.clear();


  }
  removeElement(int index){

    employees.value.removeAt(index);
    itemCount.value = employees.value.length;

  }

  addElementDetails(String name, String address){

    Employee =EmployeeModel(name:name,address:address );
    employees.value.add(Employee);
    itemCount.value = employees.value.length;
    nameText.clear();
    addressText.clear();

  }
  removeElementDetails(int index){

    employees.value.removeAt(index);
    itemCount.value = employees.value.length;

  }




  // void increment() => itemCount.value++;
}
