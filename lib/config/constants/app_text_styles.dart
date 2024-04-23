

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';

abstract class AppTextStyles{
   const AppTextStyles._();
  static const   fontFamily="Poppins";
 static  TextStyle   body35w5 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 35.sp,
      color: AppColors.white);
static  TextStyle   body16w5 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 18.sp,
      color: AppColors.white);
     
     static  TextStyle   body13w5 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 13.sp,
      color: AppColors.white);
     
static  TextStyle   body22w5 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 22.sp,
      color: AppColors.white);
     

     static  TextStyle   body16w7 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 18.sp,
      color: AppColors.white);
     
      static LinearGradient linearGradient=LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff051102),
            Color(0xff0E2804),
            Color(0xff071202),
        ]);
         static LinearGradient linearGradientwhite=LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
               AppColors.white.withOpacity(0.5),
        
            AppColors.white,
         
           
        ]);
        static  TextStyle   body24w5 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 24.sp,
      color: AppColors.white);
        static  TextStyle   body13w7 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 13.sp,
      color: AppColors.white);
        static  TextStyle   body18w7 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 18.sp,
      color: AppColors.white);
        static  TextStyle   body18w5 =  TextStyle (
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 18.sp,
      color: AppColors.white);
}

  