import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Flexible(
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.redAccent,
                  size: 50.0,
                ),
              ),
              Flexible(
                flex: 2,
                child: Text(
                  'Shoppy',
                  style: GoogleFonts.getFont(
                    'Lato',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.redAccent,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Shop Fast & Easy',
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.redAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
