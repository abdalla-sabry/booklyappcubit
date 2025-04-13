import 'package:booklyappcubit/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class styleForText {
  static final styleText16_Gilroy =
  TextStyle(
      fontSize: 14, color: Color(0xff707070), fontWeight: FontWeight.w400,fontFamily: kgilary);
static final styleText20_Gt =
  TextStyle(
      fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400,fontFamily: kGTSectraFine);

  static final styleText14 = GoogleFonts.montserrat(
      fontSize: 14, color: Color(0xff707070), fontWeight: FontWeight.w400);
  static final styleText16 = GoogleFonts.montserrat(
      fontSize: 16, color: Color(0xff707070), fontWeight: FontWeight.w500);
  static final styleText18semiBold = GoogleFonts.montserrat(
      fontSize: 18, fontWeight: FontWeight.w600);
  static final styleText18 = GoogleFonts.montserrat(
      fontSize: 20, fontWeight: FontWeight.bold);
  static final styleText20 = GoogleFonts.montserrat(
      fontSize: 20, fontWeight: FontWeight.bold);
}
