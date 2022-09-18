import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var wards =[
    'ওয়ার্ড নং ০১',
    'ওয়ার্ড নং ০২',
    'ওয়ার্ড নং ০৩',
    'ওয়ার্ড নং ০৪',
    'ওয়ার্ড নং ০৫',
    'ওয়ার্ড নং ০৬',
    'ওয়ার্ড নং ০৭',
    'ওয়ার্ড নং ০৮',
    'ওয়ার্ড নং ০৯',
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
  void onClose() {}
  void increment() => count.value++;
}
