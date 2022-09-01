import 'package:get/get.dart';

import '../modules/hiveWork/bindings/hive_work_binding.dart';
import '../modules/hiveWork/views/hive_work_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/testpage/bindings/testpage_binding.dart';
import '../modules/testpage/views/testpage_view.dart';
import '../modules/workPage/bindings/work_page_binding.dart';
import '../modules/workPage/views/work_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HIVE_WORK;

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

  ];
}
