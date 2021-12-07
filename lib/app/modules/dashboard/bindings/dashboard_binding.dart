import 'package:get/get.dart';

import 'package:shopping_app/app/data/providers/product_provider.dart';
import 'package:shopping_app/app/modules/home/controllers/product_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductProvider());
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.put(ProductController());
  }
}
