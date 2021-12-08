import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

import 'package:shopping_app/app/modules/dashboard/controllers/dashboard_controller.dart';

class Custombottomnavbar extends StatelessWidget {
  Custombottomnavbar({
    Key? key,
  }) : super(key: key);

  final DashboardController dashboardController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        elevation: 9,
        iconSize: 20,
        selectedFontSize: 12,
        enableFeedback: true,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle:
            GoogleFonts.getFont('Lato', fontWeight: FontWeight.w700),
        currentIndex: dashboardController.currentpageindex.value,
        onTap: (value) {
          dashboardController.currentpageindex.value = value;
        },
        items: const [
          BottomNavigationBarItem(
            label: 'HOME',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Orders',
            icon: Icon(
              Icons.shopping_bag,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Help',
            icon: Icon(
              Icons.contact_support,
            ),
          ),
        ],
      ),
    );
  }
}
