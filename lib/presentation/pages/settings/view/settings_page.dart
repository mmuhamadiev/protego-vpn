import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/config/constants/assets.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  List < String> settingsName=["about", "language", "terms", "privacy"];
  List < String> icons=[Assets.appabout,Assets.applanguages, Assets.appterm  ,Assets.appprivacy
  ];
   @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Container(
        alignment: Alignment.center,
      decoration: BoxDecoration(
      gradient: AppTextStyles.linearGradient,
      
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                 GestureDetector(
                   onTap: (){
                    Navigator.pop(context);
                   },
                  child: Icon(Icons.arrow_back_ios,color: AppColors.white,size: 30.w,)),
               
                  Center(child: Text("Settings",style: AppTextStyles.body24w5,)),
                   SizedBox(width: 30.w,),
                ],
              ),
            ),
            //!  settings text 
            SizedBox(height: 15.h,),
        //!  app icon
            Container(padding: EdgeInsets.all(3),
            
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: AppColors.white),
              borderRadius: BorderRadius.circular(20),color: AppColors.apiGreyColor,),child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/icons/app_ic2.png",width: 60.w,height: 60.h,)),
            ),
          
           SizedBox(height: 20.h,),
             Expanded(
               
                child: ListView.builder(

                  itemCount: 4,
                  itemBuilder:(context, index) {
                return  Container(
                
                 margin:const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0E2804)
  
                   
                    
                  ),
                  child: ListTile(

                
                    contentPadding: const EdgeInsets.all(10),
                     
                  
                     onTap: (){
                      switch(index){
                         case 0  :
                        showAboutDialog(
                            context: context,
                            applicationName: 'Protego Vpn',
                          applicationVersion: '1.0.0',
                          //applicationIcon: Assets
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text('about_app'.tr(),
                                    style: AppTextStyles.body16w5.copyWith(color: AppColors.black),),
                                )
                              ],
                            )
                          ]
                        );
                         break;
                          case 1  :
                         showDialog(context: context, builder: (context) {
                           return Dialog(
                             backgroundColor: AppColors.downloadiconcolor,
                             child: Container(
                               height: 150.h,
                               child: Center(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Card(
                                       color: context.locale ==const Locale("en", "US")? AppColors.startBackcolor: AppColors.settingsListile,
                                       child: ListTile(
                                         title: GestureDetector(
                                           child: Text(
                                             "🇷🇺Русский",
                                             style: AppTextStyles.body22w5.copyWith(color: AppColors.black),
                                           ),
                                           onTap: () {
                                             if (context.locale ==const Locale("en", "US")) {
                                               context.setLocale(const Locale("ru", "RU"));
                                               context.pop();
                                             }
                                           },
                                         ),
                                       ),
                                     ),
                                     Card(
                                       color: context.locale ==const Locale("ru", "RU")?  AppColors.startBackcolor: AppColors.settingsListile,
                                       child: ListTile(
                                         title: GestureDetector(
                                           child: Text(
                                             "🇺🇸English",
                                             style: AppTextStyles.body22w5
                                                 .copyWith(color: AppColors.black),
                                           ),
                                           onTap: () {
                                               if (context.locale ==const Locale("ru", "RU")) {
                                               context.setLocale(const Locale("en", "US"));
                                               context.pop();
                                             }
                                           },
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           );
                         });
                         break;
                           case 2  :
                         context.push("/termof");
                         break;
                            case 3  :
                         context.push("/privacypolicy");
                         break;

                      }
                      
                     },
                    
                  leading: Image.asset(
                    icons[index],height:28.h,width: 28.w,color:
                      AppColors.apiGreyColor,),
                    title: Text(settingsName[index].tr(),style: AppTextStyles.body22w5.copyWith(color: AppColors.white),),

                    trailing: Transform.rotate(
                      angle: pi,
                      child:  Icon(Icons.arrow_back_ios_new_rounded,
                      
                      
                      size: 32,
                      color: AppColors.startBackcolor
                      ),
                    )),
                  
                );
                },),
              ),
            
          ],
          ),
        ),
      ),
      ),
    );
  }
}