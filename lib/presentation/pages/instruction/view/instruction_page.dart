import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/presentation/pages/instruction/components/smooth.dart';
import 'package:protego_vpn/presentation/pages/instruction/components/user_instructions_1.dart';
import 'package:protego_vpn/presentation/pages/instruction/components/user_instructions_3.dart';
import 'package:protego_vpn/presentation/pages/instruction/components/user_instructions_4.dart';
import 'package:protego_vpn/presentation/pages/instruction/components/user_instructions_5.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage ({super.key});

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {

  late PageController controller;

@override
  void initState() {
    controller = PageController(keepPage: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     List children =const [
        Instruction1(),
        Instruction3(),
        Instruction4(),
        Instruction5(),
      ];
    return  Scaffold(
      body: Container(
       // constraints:const BoxConstraints(maxWidth: double.infinity,maxHeight: double.infinity),
        decoration: BoxDecoration(
          gradient: AppTextStyles.linearGradient
        ),
        child: 
           SafeArea(
             child: Column(
               children: [
                 Expanded(
                flex: 9,
                   child: PageView.builder(
                    itemCount: children.length,
                      controller: controller,
                      itemBuilder: (BuildContext context, int index) { 
                        return children[index];
                       },
                   ),
                 ),
      
                SmoothIndicatorCustom(controller: controller)
               ],
               
             ),
           ),
           
        ),
      );
   
  }
}