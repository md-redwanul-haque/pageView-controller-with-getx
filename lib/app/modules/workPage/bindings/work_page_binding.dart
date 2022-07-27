import 'package:get/get.dart';

import '../controllers/work_page_controller.dart';

class WorkPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkPageController>(
      () => WorkPageController(),
    );
  }
}
