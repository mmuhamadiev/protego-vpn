import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/presentation/pages/instruction/view/instruction_page.dart';
import 'package:protego_vpn/presentation/pages/settings/view/settings_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 390.w,
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          GestureDetector(
                  onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
       
                  },
                  child:const Icon(
                
                    Icons.settings,size: 35,color: AppColors.white,
                            
                  
                  ),
                ),
                RichText(
                text: TextSpan(
                    text: "Protego ",
                    style: AppTextStyles.body24w5,
                    children: [
                      TextSpan(
                          text: "VPN",
                          style: AppTextStyles.body24w5
                              .copyWith(color: AppColors.startButtonShadow,fontWeight: FontWeight.w600))
                    ]),
              ),
              GestureDetector(
               child:Icon(Icons.info_rounded,size: 35,color: AppColors.white,),
               
               onTap: () {
              context.push("/instruction");
                 
               },
              )
        ]),
      ),
    );
  }}