// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final VoidCallback onPressed;

  CustomButton({
    Key? key,
    required this.title,
    required this.color,
    required this.textColor,
    required this.borderColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyles =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: textColor);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: borderColor, width: 2.0),
        ),
        backgroundColor: color,
      ),
      child: Container(
        width: double.infinity, // Set the width to occupy the available space
        height: 45,
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.manrope(textStyle: buttonStyles),
          ),
        ),
      ),
    );
  }
}
