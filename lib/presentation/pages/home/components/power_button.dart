import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/assets.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_cubitd.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_state.dart';

// ignore: must_be_immutable
class PowerButton extends StatefulWidget {
  const PowerButton({super.key, });

  @override
  State<PowerButton> createState() => _PowerButtonState();
}

class _PowerButtonState extends State<PowerButton> {


  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<HomeCubit,HomeState>(
      builder:(context, state) =>  Container(
            padding: const EdgeInsets.all(60),
            margin:const EdgeInsets.only(right: 10),
            height: 270.h,
            width: MediaQuery.sizeOf(context).width.w,
            decoration: const BoxDecoration(image: DecorationImage( image: AssetImage(Assets.homePageMap,))),
            child: Container(
               clipBehavior: Clip.antiAlias,
              height: 60.h,
              width:60.w,
            alignment: Alignment.center,
              decoration: BoxDecoration(
                color : state.isStarted == 'disconnected'? AppColors.ontapBorder: state.isStarted == 'connected'? AppColors.startBackcolor: Colors.orangeAccent,
                 border: Border.all(color: state.isStarted == 'disconnected'? Colors.blue: state.isStarted == 'connected'? AppColors.circleBorder.withOpacity(0.9): Colors.orange,width: 6),
               shape: BoxShape.circle,
              boxShadow:  [
                
           state.isStarted == 'disconnected'? BoxShadow(
                  offset: const Offset(2, 2),
                  color: AppColors.startBackcolor ,
                  blurRadius: 15,
                  spreadRadius: 10,
                ):const BoxShadow(
                   offset: Offset(0, 0),
                  color: AppColors.ontapBorder,
                  blurRadius: 15,
                  spreadRadius: 10,
                )
              ]
            ),
                 child: BackdropFilter(filter: ImageFilter.blur(
                  sigmaX:8,
                  sigmaY: 8,
                 ),
                 child: Container(
                alignment: Alignment.center,
                  child:GestureDetector(
                    onTap: (){
                       //debugPrint("aaa");
                      context.read<HomeCubit>().onTapButton();
                
                    },
                    child: Icon(Icons.power_settings_new_outlined,size: 60,color: state.isStarted == 'disconnected' ?AppColors.red: state.isStarted == 'connected'? AppColors.white: Colors.limeAccent,)) ,
                 ),
            
                 ),), ),
    )
            ;
  }
}