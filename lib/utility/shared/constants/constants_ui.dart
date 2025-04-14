import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kWhiteColor = const Color(0xFFFFFFFF);
Color kBlackColor = const Color(0xFF000000);
Color kMainColor = const Color(0xFF0F2D47);
Color kGreyColor = const Color(0xFFDBD7D7);
Color kWhiteGreyColor = const Color(0xFFF4F4F4);
Color kRedColor = const Color(0xFFD31F1F);
Color kGreySecondColor = const Color(0xFFBBB5B5);

TextStyle whiteTextStyle = GoogleFonts.inter(
  color: kWhiteColor,
);

TextStyle blackTextStyle = GoogleFonts.inter(
  color: kBlackColor,
);

TextStyle mainTextStyle = GoogleFonts.inter(
  color: kMainColor,
);

TextStyle greyTextStyle = GoogleFonts.inter(
  color: kGreyColor,
);

TextStyle redTextStyle = GoogleFonts.inter(
  color: kRedColor,
);

TextStyle gretSecondTextStyle = GoogleFonts.inter(
  color: kGreySecondColor,
);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

List<BoxShadow> defaultBoxShadow = [
  BoxShadow(
    offset: const Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
    color: kBlackColor.withValues(alpha: 0.3),
  ),
  BoxShadow(
    offset: const Offset(0, 1),
    blurRadius: 3,
    spreadRadius: 1,
    color: kBlackColor.withValues(alpha: 0.15),
  ),
];
