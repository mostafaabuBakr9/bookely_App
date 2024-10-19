import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle googletextStyle14regular = GoogleFonts.montserratAlternates(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xff707070),
  );
  static TextStyle googletextStyle14medium = GoogleFonts.montserratAlternates(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xff707070),
  );
  static TextStyle googletextStyle14semiBold = GoogleFonts.montserratAlternates(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle googletextStyle16medium = GoogleFonts.montserratAlternates(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle googletextStyle18medium = GoogleFonts.montserratAlternates(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xff707070),
  );
  static TextStyle googletextStyle18semiBold = GoogleFonts.montserratAlternates(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle googletextStyle20Bold = GoogleFonts.montserratAlternates(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle gTSectraFineTextStyle20 = const TextStyle(
      fontSize: 20,
      fontFamily: 'GT Sectra Fine',
      color: Colors.white,
      fontWeight: FontWeight.normal);
  static TextStyle gTSectraFineTextStyle30 = const TextStyle(
    fontSize: 30,
    fontFamily: 'GT Sectra Fine',
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );
}
