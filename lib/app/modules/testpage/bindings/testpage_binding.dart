import 'package:get/get.dart';

import '../controllers/testpage_controller.dart';

class TestpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestpageController>(
      () => TestpageController(),
    );
  }
}
