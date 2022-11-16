import 'package:get/get.dart';

import '../controllers/localdatabase_controller.dart';

class LocaldatabaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocaldatabaseController>(
      () => LocaldatabaseController(),
    );
  }
}
