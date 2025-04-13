import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bestsellerwidgt extends StatelessWidget {
  const Bestsellerwidgt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, top: 48),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          'Best Seller',
          style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
        ),
      ]),
    );
  }
}
