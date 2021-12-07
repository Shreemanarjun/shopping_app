import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:shopping_app/app/data/consts/category_list.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.grey[200],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorymodels.length,
        itemBuilder: (context, index) {
          var categorymodel = categorymodels[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: SizedBox(
                height: 120,
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Image(
                        image: NetworkImage(
                          categorymodel.imagepath,
                        ),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    AutoSizeText(
                      categorymodel.label.toString(),
                      maxFontSize: 12,
                      style: GoogleFonts.getFont(
                        'Nunito Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
