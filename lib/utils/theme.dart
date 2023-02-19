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

class Contact extends StatelessWidget {
  final String butttonText;
  final Widget icon;
  final Function onPressed;
  const Contact({
    Key? key,
    required this.butttonText,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
            backgroundColor: Colors.amberAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0))),
        onPressed: onPressed(),
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: icon,
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            butttonText,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
