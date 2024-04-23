import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/config/constants/assets.dart';

class Instruction5 extends StatelessWidget {
  const Instruction5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(
            height: 20.h,
          ),
          Container(
            child: SizedBox(
                width: 390 * 0.8,
                height: 844 * 0.7,
                child: Image.asset('instruction4_img'.tr())),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            child: Flexible(child: Text('instruction4'.tr(), style: AppTextStyles.body16w5,)),
          ),
        ]
    );
  }
}