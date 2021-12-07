import 'package:get/get.dart';
import 'package:shopping_app/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:shopping_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:shopping_app/app/modules/login/views/loginview_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.dashboard,
      page: () => DashBoardView(),
      binding: DashBoardBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
    ),
  ];
}
