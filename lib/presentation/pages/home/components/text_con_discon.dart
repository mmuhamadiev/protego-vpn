import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_cubitd.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_state.dart';

class TextDisConnOrConn extends StatelessWidget {
  const TextDisConnOrConn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
              
              builder:(context, state) => RichText(
                textAlign: TextAlign.center,

                text:TextSpan(

                text: state.isStarted == 'connected'? "connected".tr(): state.isStarted == 'disconnected'? "disconnected".tr(): "pending".tr(),
               style: AppTextStyles.body35w5,

                children: [
                  TextSpan(
                    style: AppTextStyles.body16w5.copyWith(color: AppColors.startButtonShadow),
                    text: '\n'
                  ),
                  TextSpan(
                    style: AppTextStyles.body16w5.copyWith(color: AppColors.startButtonShadow),
                    text:state.isStarted == 'disconnected'? "tap_connect".tr(): state.isStarted == 'connected'? "tap_disconnect".tr(): "pending2".tr()
                  ),
                ]
              )
              ),
            );
  }
}