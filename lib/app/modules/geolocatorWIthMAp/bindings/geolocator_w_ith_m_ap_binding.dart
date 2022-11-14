import 'package:get/get.dart';

import '../controllers/geolocator_w_ith_m_ap_controller.dart';

class GeolocatorWIthMApBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeolocatorWIthMApController>(
      () => GeolocatorWIthMApController(),
    );
  }
}
