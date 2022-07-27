import 'package:get/get.dart';
import 'package:flutter/material.dart';

class WorkPageController extends GetxController {
  //TODO: Implement WorkPageController
  final pageController = PageController(initialPage: 0) ;
@override
  void dispose() {
  pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  final count = 0.obs;
  var car= 'ferrari'.obs;
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
