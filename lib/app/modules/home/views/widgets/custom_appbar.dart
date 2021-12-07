import 'package:flutter/material.dart';

import 'package:google_language_fonts/google_language_fonts.dart';

AppBar customappbar() {
  return AppBar(
    elevation: 0,
    title: Text(
      "Shoppy",
      style: GoogleFonts.getFont(
        'Lato',
        fontWeight: FontWeight.w700,
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications,
          size: 20,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart,
          size: 20,
        ),
      )
    ],
    bottom: PreferredSize(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Search products & brands',
                  suffixIcon: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.list),
                          VerticalDivider(
                            color: Colors.grey.shade400,
                            thickness: 1,
                          ),
                          const Icon(
                            Icons.qr_code,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      preferredSize: const Size.fromHeight(60),
    ),
  );
}
