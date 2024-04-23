import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vpn/flutter_vpn.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/config/constants/assets.dart';
import 'package:protego_vpn/domain/VPNManager.dart';
import 'package:protego_vpn/presentation/pages/home/components/app_bar.dart';
import 'package:protego_vpn/presentation/pages/home/components/ip_adress.dart';
import 'package:protego_vpn/presentation/pages/home/components/power_button.dart';
import 'package:protego_vpn/presentation/pages/home/components/text_con_discon.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_cubitd.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late VPNManager vpnManager = VPNManager();

  void configureAndStartVPN() {
    vpnManager.configureVPN('143.198.79.95',
      'testuser2',
      "1234Qwer",
      Assets.certificate
    );
    // vpnManager.startVPN();
  }

  @override
  void initState() {
    //vpnManager = VPNManager();
    configureAndStartVPN();
    FlutterVpn.onStateChanged.listen((event) {
      print(event.name);
      if(event.name == 'connecting') {
        context.read<HomeCubit>().connectionState('pending');
      } else if(event.name == 'connected') {
        context.read<HomeCubit>().connectionState('connected');
      } else if(event.name == 'disconnected') {
        context.read<HomeCubit>().connectionState('disconnected');
      }
      else if(event.name == 'error') {
        context.read<HomeCubit>().connectionState('disconnected');
      }
    },
        onDone: () {
          context.read<HomeCubit>().connectionState('connected');
        },
      onError: (text) {
        context.read<HomeCubit>().connectionState('disconnected');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('bad'.tr(), style: AppTextStyles.body13w5,),
        )));
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.startPagebackgroundcolor,
      body: Container(
        decoration: BoxDecoration(gradient: AppTextStyles.linearGradient),
        child:   SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeAppBar(),
              Spacer(),
              TextDisConnOrConn(),
              PowerButton(),
              Spacer(),
              IpAdress()
            ],
          ),
        ),
      ),
    );

  }
}
