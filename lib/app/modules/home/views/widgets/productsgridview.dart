import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/modules/home/controllers/product_controller.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class ProductGridView extends GetView<ProductController> {
  const ProductGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: controller.obx(
            (products) => products != null
                ? StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    physics: const ClampingScrollPhysics(
                        parent: ClampingScrollPhysics()),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      var product = products[index];
                      return SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Image.network(
                                  product.image,
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  children: [
                                    Column(
                                      children: [
                                        AutoSizeText(
                                            product.title.substring(0, 12)),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("\$ ${product.price}"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      );
                    },
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.count(2, 2),
                  )
                : const Center(
                    child: Text("No Products"),
                  ),
            onEmpty: const Center(
              child: Text("No Products"),
            ),
            onError: (e) => Center(
                  child: Text("Error ${e.toString()}"),
                ),
            onLoading: const Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )),
      ),
    );
  }
}
