import 'package:flutter/material.dart';
import 'package:medory/constants/colors.dart';

class TextStyleConfig {
  static const heading = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 31 / 24,
      letterSpacing: 0.5,
      color: ColorConfig.headingColor);

  static const guidanceHeading = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 24 / 20,
      letterSpacing: 0.18,
      color: ColorConfig.headingColor);

  static const guidanceSubHeading = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 24 / 18,
      letterSpacing: 0.15,
      color: ColorConfig.termsAndConditionListColor);

  static const guidanceMyMedoryText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      height: 16 / 12,
      letterSpacing: 1,
      color: ColorConfig.saltaColor);

  static const detailText = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 20 / 14,
      letterSpacing: 0.5,
      color: ColorConfig.textColorBlue);

  static const detailTextheight1 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1,
      letterSpacing: 0.5,
      color: ColorConfig.textColorBlue);

  static const salta = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 16 / 14,
      letterSpacing: 1,
      color: ColorConfig.saltaColor);

  static const termsAndConditionText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      letterSpacing: 1,
      height: 16 / 12,
      color: ColorConfig.headingColor);

  static const termsAndConditionListText = TextStyle(
    letterSpacing: 0.5,
    fontSize: 14,
    height: 19 / 14,
    fontWeight: FontWeight.w400,
    color: ColorConfig.termsAndConditionListColor,
  );

  static const textButtonStyle = TextStyle(
      color: Color(0xFF684EF4),
      fontFamily: "DMSans",
      fontWeight: FontWeight.w700,
      fontSize: 14,
      height: 24 / 14,
      letterSpacing: 0.75);

  static const textButtonSideText = TextStyle(
      fontFamily: "DMSans",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.18,
      height: 24 / 14,
      color: Color(0xFF555874));

  static const fieldError = TextStyle(
    height: 16 / 12,
    fontSize: 12,
    letterSpacing: 0.4,
    color: ColorConfig.errorColor,
  );
}
