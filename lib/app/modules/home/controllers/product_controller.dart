import 'package:get/get.dart';

import 'package:shopping_app/app/data/model/product_model.dart';
import 'package:shopping_app/app/data/providers/product_provider.dart';

class ProductController extends GetxController
    with StateMixin<List<Productmodel>> {
  final ProductProvider productProvider = Get.find();
  @override
  void onInit() async {
    await getallproducts();
    super.onInit();
  }

  Future<void> getallproducts() async {
    change(null, status: RxStatus.empty());
    change(null, status: RxStatus.loading());
    var response = await productProvider.getAllProducts();
    if (response.body != null) {
      var products = response.body;
      change(products, status: RxStatus.success());
    } else {
      change(null, status: RxStatus.empty());
    }
  }
}
