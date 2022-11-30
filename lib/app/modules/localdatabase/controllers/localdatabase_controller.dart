import 'package:bd_gov_mochta_app/app/modules/localdatabase/db/db_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/task_model.dart';

class LocaldatabaseController extends GetxController {
  //TODO: Implement LocaldatabaseController
  var title = TextEditingController().obs;
  var description = TextEditingController().obs;
  RxInt id =0.obs;
  final count = 0.obs;
  RxList<todoModel> todoList =<todoModel>[].obs;

  Future<List<todoModel>> check()async{
    todoList.value=await DataBaseHelper.dbInstance.getTodos() ;
    return todoList.value;
    update();
  }


  @override
  void onInit() {
   // check();
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
