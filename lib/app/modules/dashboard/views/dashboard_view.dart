import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:shopping_app/app/modules/dashboard/views/widgets/customnavbar.dart';
import 'package:shopping_app/app/modules/home/views/home_view.dart';
import 'package:shopping_app/app/modules/profile/profile_view.dart';

import '../controllers/dashboard_controller.dart';

class DashBoardView extends GetView<DashboardController> {
  DashBoardView({Key? key}) : super(key: key);
  final DashboardController dashbaordController = Get.find();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: dashbaordController.pageController,
          allowImplicitScrolling: true,
          pageSnapping: false,
          children: const [
            HomeView(),
            Center(
              child: Text("Orders"),
            ),
            ProfileView(),
            Center(
              child: Text("Help"),
            )
          ],
        ),
        bottomNavigationBar: Custombottomnavbar(),
      ),
    );
  }
}
