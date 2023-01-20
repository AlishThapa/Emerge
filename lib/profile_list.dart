import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ListInProfile extends StatelessWidget {
  const ListInProfile({
    Key? key, required this.iconLeft, required this.name, required this.iconRight,
  }) : super(key: key);
  final Icon iconLeft;
  final String name;
  final Icon iconRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconLeft,
        const SizedBox(width: 15),
        Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        iconRight,
      ],
    );
  }
}
