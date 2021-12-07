import 'package:flutter/material.dart';

import 'package:shopping_app/app/modules/home/views/widgets/category_section.dart';
import 'package:shopping_app/app/modules/home/views/widgets/custom_appbar.dart';
import 'package:shopping_app/app/modules/home/views/widgets/productsgridview.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: customappbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CategorySection(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Featured Products"),
          ),
          Expanded(child: ProductGridView())
        ],
      ),
    );
  }
}
