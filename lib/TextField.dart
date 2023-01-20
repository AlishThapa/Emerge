import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Textfield extends StatelessWidget {
  const Textfield({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final style = GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w500,
    );
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffE8E8E8), borderRadius: BorderRadius.circular(15)),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: style,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
