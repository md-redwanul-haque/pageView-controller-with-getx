import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/workPage/bindings/work_page_binding.dart';
import '../modules/workPage/views/work_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WORK_PAGE;

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
  ];
}
