import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/config/constants/assets.dart';

class IpAdress extends StatelessWidget {
  const IpAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 70.h,
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(18)),
                width: MediaQuery.sizeOf(context).width.w,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      Assets.usaFlag,
                      height: 40.h,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "United States\n",
                            style: AppTextStyles.body16w7,
                            children: [
                          const TextSpan(
                              text: "IP ",
                              style: TextStyle(color: AppColors.apiGreyColor)),
                          TextSpan(
                              text: "143.198.79.95",
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w400))
                        ])),
                    Image.asset(
                      Assets.signal,
                      height: 32.h,
                    ),
                  
                  ],
                ),
              );
  }
}