import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Character extends StatelessWidget {
  final String headtext;
  final double fontsize;
  const Character({
    Key? key,
    required this.headtext,
    required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      headtext,
      style: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
            color: Colors.black,
            fontSize: fontsize,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
