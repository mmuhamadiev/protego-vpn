import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicatorCustom extends StatelessWidget {
 final  PageController controller;
  const SmoothIndicatorCustom
  ({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
                  flex: 1,
                   child: SmoothPageIndicator(
                    controller: controller,
                    count: 4,
                    effect:  WormEffect(
                     
                      activeDotColor:AppColors.uploadconshadow ,
                      dotColor: AppColors.white,
                      dotHeight: 20.h,
                      dotWidth: 20.w,
                      type: WormType.thin,
                    ),
                                 ),
                 );
  }
}