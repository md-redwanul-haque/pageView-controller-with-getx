import 'package:get/get.dart';

import '../controllers/multiple_image_controller.dart';

class MultipleImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MultipleImageController>(
      () => MultipleImageController(),
    );
  }
}
