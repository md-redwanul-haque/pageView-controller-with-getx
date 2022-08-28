import 'package:get/get.dart';

import '../controllers/hive_work_controller.dart';

class HiveWorkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HiveWorkController>(
      () => HiveWorkController(),
    );
  }
}
