import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

import 'package:shopping_app/app/modules/home/controllers/product_controller.dart';

class ProductGridView extends GetView<ProductController> {
  const ProductGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: controller.obx(
          (products) => products != null
              ? GridView.builder(
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
                              flex: 3,
                              child: Image.network(
                                product.image,
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Wrap(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          AutoSizeText(
                                            product.title.substring(0, 12),
                                            style: GoogleFonts.getFont(
                                              'Lato',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4),
                                            child: Text(
                                              "\$ ${product.price}",
                                              style: GoogleFonts.getFont('Lato',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.green),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4),
                                            child: Text(
                                              "Category : ${product.category}",
                                              style: GoogleFonts.getFont(
                                                'Lato',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 4, bottom: 8),
                                            child: Text(
                                              "Rating : ${product.rating.rate} (${product.rating.count})",
                                              style: GoogleFonts.getFont(
                                                'Lato',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8),
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
    );
  }
}
