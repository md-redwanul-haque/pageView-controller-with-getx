import 'package:get/get.dart';

import '../modules/contact/bindings/contact_binding.dart';
import '../modules/contact/views/contact_view.dart';
import '../modules/hiveWork/bindings/hive_work_binding.dart';
import '../modules/hiveWork/views/hive_work_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/multipleImage/bindings/multiple_image_binding.dart';
import '../modules/multipleImage/views/multiple_image_view.dart';
import '../modules/testpage/bindings/testpage_binding.dart';
import '../modules/testpage/views/testpage_view.dart';
import '../modules/workPage/bindings/work_page_binding.dart';
import '../modules/workPage/views/work_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TESTPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WORK_PAGE,
      page: () => WorkPageView(),
      binding: WorkPageBinding(),
    ),
    GetPage(
      name: _Paths.TESTPAGE,
      page: () => TestpageView(),
      binding: TestpageBinding(),
    ),
    GetPage(
      name: _Paths.HIVE_WORK,
      page: () => HiveWorkView(),
      binding: HiveWorkBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT,
      page: () => ContactView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: _Paths.MULTIPLE_IMAGE,
      page: () => MultipleImageView(),
      binding: MultipleImageBinding(),
    ),
  ];
}
