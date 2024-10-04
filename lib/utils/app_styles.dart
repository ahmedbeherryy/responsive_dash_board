import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {

  static TextStyle styleRegular16(context){
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontsSize(context,fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  // static  TextStyle styleRegular16 = TextStyle(
  //   color: const Color(0xff064060),
  //   fontSize: getResponsiveFontsSize(fontsize: 16),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w400,
  // );

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontsSize(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontsSize(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontsSize(context, fontsize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontsSize(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontsSize(context, fontsize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontsSize(context, fontsize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontsSize(context, fontsize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontsSize(context, fontsize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontsSize(context, fontsize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}



double getResponsiveFontsSize (context,{required double fontsize})
{
  double scaleFactor =getScaleFactor(context);
  double responsiveFontSize =fontsize *scaleFactor;

  double lowerLimit =fontsize *0.8;
  double upperLimit =fontsize *1.2;
  return (responsiveFontSize.clamp(lowerLimit, upperLimit));

}
double getScaleFactor(context) {
  // var dispatcher =PlatformDispatcher.instance;
  // var physicalwidth =dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio =dispatcher.views.first.devicePixelRatio;
  //
  // var width =physicalwidth /devicePixelRatio;

  double width =MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet){
    return width /550;
  }else if (width < SizeConfig.desktop){
    return width /1000;
  }else {
    return width /1920;
  }
}