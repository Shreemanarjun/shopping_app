import 'package:get/get.dart';
import 'package:shopping_app/app/data/model/product_model.dart';

class ProductProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://fakestoreapi.com/';
  }

  ///Get all doctors clinics
  Future<Response<List<Productmodel>?>> getAllProducts() async {
    final response = await get(
      'products?limit=10/',
      decoder: (data) {
        var datalist = data as List;
        List<Productmodel> specialistlist = [];
        for (var element in datalist) {
          specialistlist.add(Productmodel.fromMap(element));
        }
        return specialistlist;
      },
    );

    return response;
  }
}
