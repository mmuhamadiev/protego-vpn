import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/presentation/pages/home/view/home_page.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushReplacementNamed('/home');
       },  
      child: Container(
        alignment: Alignment.center,
        height: 60.h,
        width: 160.w,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: AppColors.startButtonShadow,
                  blurRadius: 12,
                  spreadRadius: 3)
            ],
            color: AppColors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          "start",
          style: AppTextStyles.body16w5,
        ).tr(),
      ),
    );
  }
}
