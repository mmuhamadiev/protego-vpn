import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';

class Instruction1 extends StatelessWidget {
  const Instruction1({super.key});

  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [              Lottie.asset("assets/lottie/2.json",height: 100.h,width: 100.w,repeat: true,reverse: true,fit: BoxFit.cover),
            SizedBox(height: 20.h,),
            Text("instruction".tr(), style: TextStyle(fontSize: 36.sp,color: AppColors.connectedtext,fontFamily: AppTextStyles.fontFamily,fontWeight: FontWeight.bold),),
            SizedBox(height: 80.h,),
              Lottie.asset("assets/lottie/1.json",height: 300.h,width: 300.w,repeat: true,reverse: true,fit: BoxFit.cover),
      
            ],
          ),
        ),
      ),
    );
  }
}