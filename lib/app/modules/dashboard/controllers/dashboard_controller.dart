import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final currentpageindex = 0.obs;
  final PageController pageController = PageController();
  @override
  void onInit() {
    ever(currentpageindex, (_) {
      pageController.animateToPage(
        currentpageindex.value,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      );
    });
    super.onInit();
  }
}
