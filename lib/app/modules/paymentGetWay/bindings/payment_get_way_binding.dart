import 'package:get/get.dart';

import '../controllers/payment_get_way_controller.dart';

class PaymentGetWayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentGetWayController>(
      () => PaymentGetWayController(),
    );
  }
}
