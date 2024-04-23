import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/config/constants/assets.dart';
import 'package:protego_vpn/presentation/pages/start/components/start_button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppTextStyles.linearGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(Assets.startPageMap),
            Center(
                child: RichText(
              text: TextSpan(
                  text: "Protego ",
                  style: AppTextStyles.body35w5,
                  children: [
                    TextSpan(
                        text: "VPN",
                        style: AppTextStyles.body35w5
                            .copyWith(color: AppColors.startButtonShadow))
                  ]),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               
                StartButton(),
              SizedBox(
                  height: 100.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
